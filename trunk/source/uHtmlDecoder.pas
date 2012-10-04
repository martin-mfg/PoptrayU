unit uHtmlDecoder;

interface
  uses Classes;


  function RemoveAllTags(source : string) : string;
  function RemoveImageTags(source : string) : string;
  procedure WriteStringToStream(stream: TStream; const appendText: string);
  procedure SantitizeHtml(source: string; outStream: TStream);
  function HTMLDecode2(const AStr: String): String;
  function ConvertHtmlToPlaintext(S : string) : string;
  function FilterCSS(const input : String) : String;


implementation
  uses SysUtils, StrUtils,
  HtmlParser, DomCore, Formatter;

function RemoveAllTagsBasic(source: string): string;
var
  TagBegin, TagEnd, TagLength: integer;
begin
  TagBegin := Pos( '<', source);      // search position of first <

  while (TagBegin > 0) do begin  // while there is a < in S
    TagEnd := Pos('>', source);              // find the matching >
    TagLength := TagEnd - TagBegin + 1;
    Delete(source, TagBegin, TagLength);     // delete the tag
    TagBegin:= Pos( '<', source);            // search for next <
  end;

  Result := source;                   // give the result
end;

// Converts a HTML formatted message to Plain-text.
function RemoveAllTags(source: string): string;
const
  STYLE_TAG_START : string = '<style';
  STYLE_TAG_END : string = '</style';
  HEAD_TAG_START : string = '<head';
  HEAD_TAG_END : string = '</head';
  PARA_TAG_START : string = '<p';
  BR_TAG_START : string = '<br';
var
  TagBegin, TagEnd, TagLength, MatchTagStart: integer;
  tagStart : string;
begin
  TagBegin := Pos( '<', source);      // search position of first <

  while (TagBegin > 0) do
  begin  // while there is a < in S
    TagEnd := PosEx('>', source, TagBegin);              // find the matching >
    TagLength := TagEnd - TagBegin + 1;
    tagStart := AnsiMidStr(source, TagBegin, Length(STYLE_TAG_START));


    if AnsiCompareText(tagStart, STYLE_TAG_START) = 0 then
    begin
      MatchTagStart := PosEx(STYLE_TAG_END, source, TagBegin);
      if (MatchTagStart > 0) then
      begin
        TagEnd := PosEx('>', source, MatchTagStart); // Move tag end to matched close tag
        TagLength := TagEnd - TagBegin + 1;
      end;
    end else if AnsiCompareText( AnsiLeftStr(tagStart, Length(HEAD_TAG_START)),
      HEAD_TAG_START ) = 0 then
    begin
      MatchTagStart := PosEx(HEAD_TAG_END, source, TagBegin);
      if (MatchTagStart > 0) then begin
        TagEnd := PosEx('>', source, MatchTagStart); // Move tag end to matched close tag
        TagLength := TagEnd - TagBegin + 1;
      end;
    end else if AnsiCompareText( AnsiLeftStr(tagStart, Length(PARA_TAG_START)),
      PARA_TAG_START ) = 0 then begin
        Insert(''+#13#10, source, TagBegin);
        Inc(TagBegin);
        Inc(TagBegin);
      //end;
    end;

    Delete(source, TagBegin, TagLength);     // delete the tag
    TagBegin:= Pos( '<', source);            // search for next <

  end;

  Result := source;                   // give the result
end;

// Input example: '<img src="img1.gif">' OR '</span>'
// less efficient but more easy to understand implementation.
function RemoveImageTags(source: string): string;
var
  TagBegin, TagEnd: integer;
begin
  // find position of first tag start
  TagBegin := Pos( '<', source);

  // no tags in entire string, return original string
  if (TagBegin = 0) then begin
    Result := source;
    Exit;
  end else begin
    Result := Copy(source, 1, TagBegin-1);
  end;

  // loop through file while there are more tags
  while (TagBegin > 0) do begin

    // find matching close tag
    TagEnd := PosEx('>', source, TagBegin);
    //TagLength := TagEnd - TagBegin + 1;

    if PosEx('img', source, TagBegin) = TagBegin + 1 then begin
      // replace image start tag with placeholder/alt text
      Result := Result + ' [image] ';
    end else if PosEx('/img', source, TagBegin) = TagBegin + 1 then begin
      //discard end image tag
    end else begin
      Result := Result + Copy(source, TagBegin, TagEnd-TagBegin+1);
    end;

    TagBegin:= PosEx( '<', source, TagEnd+1);


    Result := Result + Copy(source, TagEnd+1, TagBegin-(TagEnd+1));


  end;
end;

procedure WriteStringToStream(stream: TStream; const appendText: string);
begin
  stream.WriteBuffer(Pointer(appendText)^, Length(appendText)*SizeOf(Char));
end;


// Cleans up HTML to filter out spamy content items:
// Removes the following tags: img, link, script
procedure SantitizeHtml(source: string; outStream: TStream);
var
  TagBegin, TagEnd, TagLength, CloseTagBegin: integer;
  tagHandled : boolean;
  filteredCode : string;
begin
  // find position of first tag start
  TagBegin := Pos( '<', source);

  // no tags in entire string, return original string
  if (TagBegin = 0) then begin
    WriteStringToStream(outStream, source);
    Exit;
  end else begin
    WriteStringToStream(outStream, Copy(source, 1, TagBegin-1));
  end;

  // loop through file while there are more tags
  while (TagBegin > 0) do begin
    // find matching close tag
    TagEnd := PosEx('>', source, TagBegin);
    TagLength := TagEnd - TagBegin + 1;

    tagHandled := false;
    case (source[TagBegin+1]) of
      'i','I':
          if TagLength >= 4 then
          case source[TagBegin+2] of 'm','M':
            case source[TagBegin+3] of 'g', 'G':
              begin
                WriteStringToStream(outStream, ' [img] ');
                tagHandled := true;
              end;
            end;
          end;
      'l','L':
        if TagLength >= 5 then
        case source[TagBegin+2] of 'i','I':
          case source[TagBegin+3] of 'n','N':
            case source[TagBegin+4] of 'k','K':
              tagHandled := true;
            end;
          end;
        end;
      'o','O':
        if TagLength >= 7 then
        case source[TagBegin+2] of 'b','B':
          case source[TagBegin+3] of 'j','J':
            case source[TagBegin+4] of 'e','E':
              case source[TagBegin+5] of 'c','C':
                case source[TagBegin+6] of 't','T':
                  tagHandled := true;
                end;
              end;
            end;
          end;
        end;
      's','S':
        if TagLength >= 7 then
            case source[TagBegin+2] of 't','T':
              case source[TagBegin+3] of 'y', 'Y':
                case source[TagBegin+4] of 'l', 'L':
                  case source[TagBegin+5] of 'e', 'E':
                    begin
                      CloseTagBegin := PosEx('</style', source, TagBegin);
                      TagEnd := PosEx('>', source, CloseTagBegin);
                      filteredCode := FilterCSS(Copy(source, TagBegin, TagEnd-TagBegin+1));
                      WriteStringToStream(outStream, filteredCode);
                      tagHandled := true;
                    end;
                  end;
                end;
              end;
        end;
      '/':
        begin
          if TagLength >= 4 then
          case source[TagBegin+2] of
          'i','I':
            case source[TagBegin+3] of 'm','M':
              case source[TagBegin+4] of 'g', 'G':
                tagHandled := true;
              end;
            end;
          'l','L':
                if TagLength >= 6 then
                case source[TagBegin+3] of 'i','I':
                  case source[TagBegin+4] of 'n','N':
                    case source[TagBegin+5] of 'k','K':
                      tagHandled := true;
                    end;
                  end;
                end;
          'o','O':
                if TagLength >= 8 then
                case source[TagBegin+3] of 'b','B':
                  case source[TagBegin+4] of 'j','J':
                    case source[TagBegin+5] of 'e','E':
                      case source[TagBegin+6] of 'c','C':
                        case source[TagBegin+7] of 't','T':
                          tagHandled := true;
                        end;
                      end;
                    end;
                  end;
                end;
          end;
        end;
      '>': tagHandled := true;
    end;

    if (NOT tagHandled) then begin
      WriteStringToStream(outStream, Copy(source, TagBegin, TagEnd-TagBegin+1));
    end;

    {
    if PosEx('img', source, TagBegin) = TagBegin + 1 then begin
      // replace image start tag with placeholder/alt text
      WriteStringToStream(outStream, ' [img] ');
    end else if PosEx('/img', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else if PosEx('link', source, TagBegin) = TagBegin + 1 then begin
      //discard tag & close tag
    end else if PosEx('/link', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else if PosEx('script', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else if PosEx('/script', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else if PosEx('object', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else if PosEx('/script', source, TagBegin) = TagBegin + 1 then begin
      //discard tag
    end else begin
      //allowed tag
      WriteStringToStream(outStream, Copy(source, TagBegin, TagEnd-TagBegin+1));
    end;
    }
    TagBegin:= PosEx( '<', source, TagEnd+1);
    WriteStringToStream(outStream, Copy(source, TagEnd+1, TagBegin-(TagEnd+1)));
  end;
end;

function FilterCSS(const input : String) : String;
var
  urlBegin, TagBegin, TagEnd, TagLength: integer;
begin
  Result := input;
  urlBegin := Pos( 'url', Result);      // search position of first <
  TagBegin := PosEx ( '(', Result, urlBegin );

  while (TagBegin > 0) do begin  // while there is a < in S
    TagEnd := PosEx(')', Result, TagBegin);
    TagLength := TagEnd - TagBegin + 1;
    //todo: taglength = 0
    Delete(Result, TagBegin+1, TagLength-2); //leave 2 chars: ( and )
    TagBegin:= PosEx( 'url', Result, TagBegin);
  end;

end;

// This function is mostly the html decoder from HTTPApp.PAS (included w/ delphi)
// But it has been modified to not barf on unknown items like &copy;
function HTMLtoPlainText(const AStr: String): String;
var
  Sp, Rp, Cp, Tp: PChar;
  S: String;
  I, Code: Integer;
begin
  SetLength(Result, Length(AStr));
  Sp := PChar(AStr);
  Rp := PChar(Result);
  Cp := Sp;
  try
    while Sp^ <> #0 do
    begin
      case Sp^ of
        '&': begin
               Cp := Sp;
               Inc(Sp);
               case Sp^ of
                 'a': if AnsiStrPos(Sp, 'amp;') = Sp then  { do not localize }
                      begin
                        Inc(Sp, 3);
                        Rp^ := '&';
                      end;
                 'l',
                 'g': if (AnsiStrPos(Sp, 'lt;') = Sp) or (AnsiStrPos(Sp, 'gt;') = Sp) then { do not localize }
                      begin
                        Cp := Sp;
                        Inc(Sp, 2);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        if Cp^ = 'l' then
                          Rp^ := '<'
                        else
                          Rp^ := '>';
                      end;
                 'q': if AnsiStrPos(Sp, 'quot;') = Sp then  { do not localize }
                      begin
                        Inc(Sp,4);
                        Rp^ := '"';
                      end;
                 '#': begin
                        Tp := Sp;
                        Inc(Tp);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        SetString(S, Tp, Sp - Tp);
                        Val(S, I, Code);
                        Rp^ := Chr((I));
                      end;
                 // ADDITIONAL CASES ADDED:
                 'c': if AnsiStrPos(Sp, 'copy;') = Sp then  { do not localize }
                      begin
                        Inc(Sp,4);
                        Rp^ := '©'; //copyright symbol
                      end;
                 // END ADDED
                 else
                 // change to how we handle unknown entities. instead of
                 // throwing an error, leave them unconverted.
                   //raise EConvertError.CreateFmt(sInvalidHTMLEncodedChar,
                   //  [Cp^ + Sp^, Cp - PChar(AStr)])
                   Rp^ := '&';
                   Inc(Rp);
                   Rp^ := Sp^; //added
               end;
           end
      else
        Rp^ := Sp^;
      end;
      Inc(Rp);
      Inc(Sp);
    end;
  except
    on E:EConvertError do
      //raise EConvertError.CreateFmt(sInvalidHTMLEncodedChar,
      //  [Cp^ + Sp^, Cp - PChar(AStr)])
      Rp^ := Sp^;//added
  end;
  SetLength(Result, Rp - PChar(Result));
end;


// This function is mostly the html decoder from HTTPApp.PAS (included w/ delphi)
// But it has been modified to not barf on unknown items like &copy;
function HTMLDecode2(const AStr: String): String;
var
  Sp, Rp, Cp, Tp: PChar;
  S: String;
  I, Code: Integer;
begin
  SetLength(Result, Length(AStr));
  Sp := PChar(AStr);
  Rp := PChar(Result);
  Cp := Sp;
  try
    while Sp^ <> #0 do
    begin
      case Sp^ of
        '&': begin
               Cp := Sp;
               Inc(Sp);
               case Sp^ of
                 'a': if AnsiStrPos(Sp, 'amp;') = Sp then  { do not localize }
                      begin
                        Inc(Sp, 3);
                        Rp^ := '&';
                      end;
                 'l',
                 'g': if (AnsiStrPos(Sp, 'lt;') = Sp) or (AnsiStrPos(Sp, 'gt;') = Sp) then { do not localize }
                      begin
                        Cp := Sp;
                        Inc(Sp, 2);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        if Cp^ = 'l' then
                          Rp^ := '<'
                        else
                          Rp^ := '>';
                      end;
                 'q': if AnsiStrPos(Sp, 'quot;') = Sp then  { do not localize }
                      begin
                        Inc(Sp,4);
                        Rp^ := '"';
                      end;
                 '#': begin
                        Tp := Sp;
                        Inc(Tp);
                        while (Sp^ <> ';') and (Sp^ <> #0) do
                          Inc(Sp);
                        SetString(S, Tp, Sp - Tp);
                        Val(S, I, Code);
                        Rp^ := Chr((I));
                      end;
                 // ADDITIONAL CASES ADDED:
                 'c': if AnsiStrPos(Sp, 'copy;') = Sp then  { do not localize }
                      begin
                        Inc(Sp,4);
                        Rp^ := '©'; //copyright symbol
                      end;
                 // END ADDED
                 else
                 // change to how we handle unknown entities. instead of
                 // throwing an error, leave them unconverted.
                   //raise EConvertError.CreateFmt(sInvalidHTMLEncodedChar,
                   //  [Cp^ + Sp^, Cp - PChar(AStr)])
                   Rp^ := '&';
                   Inc(Rp);
                   Rp^ := Sp^; //added
               end;
           end
      else
        Rp^ := Sp^;
      end;
      Inc(Rp);
      Inc(Sp);
    end;
  except
    on E:EConvertError do
      //raise EConvertError.CreateFmt(sInvalidHTMLEncodedChar,
      //  [Cp^ + Sp^, Cp - PChar(AStr)])
      Rp^ := Sp^;//added
  end;
  SetLength(Result, Rp - PChar(Result));
end;


function ConvertHtmlToPlaintext(S : string) : string;
var
  HtmlDoc: TDocument;
  Formatter: TBaseFormatter;
  HtmlParser: THtmlParser;
begin
  HtmlParser := THtmlParser.Create;
  try
    HtmlDoc := HtmlParser.parseString(S)
  finally
    HtmlParser.Free
  end;

  Formatter := TTextFormatter.Create;
  try
    Result := Formatter.getText(HtmlDoc)
  finally
    Formatter.Free
  end;

  HtmlDoc.Free;
end;



end.


