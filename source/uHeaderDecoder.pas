{-------------------------------------------------------------------------------
Header Decoder Utility Class
Copyright � 2012 Jessica Brown
All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

The GNU GPL can be found at:
  http://www.gnu.org/copyleft/gpl.html
-------------------------------------------------------------------------------}

unit uHeaderDecoder;

interface
  uses Classes, SysUtils, StrUtils;

  function DecodeHeader(const encodedHeader : AnsiString) : WideString; //overload;
  //function DecodeHeader(const encodedHeader : string; const charset : string) : WideString; overload;

implementation
  uses IdCoder, IdCoderQuotedPrintable, IdCoderMIME, IdCoder3to4, IdCoderHeader,
  Dialogs, uCodePageConverter;

(*function DecodeHeader(const encodedHeader : string; const charset : string) : WideString;
var
    cp : Integer;
begin
     Result := DecodeHeader(encodedHeader);
     if (Result <> '') AND (Result = encodedHeader) then
     begin
        cp := GetCodePageId(charset);

        //ShowMessage('charset ' +charset+' is codepage '+ IntToStr(cp));
     end;
end; *)

{:Converts Ansi string to Unicode string using specified code page.
  @param   s        Ansi string.
  @param   codePage Code page to be used in conversion.
  @returns Converted wide string.
}
(*function StringToWideString(const s: AnsiString; codePage: Word): WideString;
var
  l: integer;
begin
  if s = '' then
    Result := ''
  else
  begin
    l := MultiByteToWideChar(codePage, MB_PRECOMPOSED, PChar(@s[1]), - 1, nil, 0);
    SetLength(Result, l - 1);
    if l > 1 then
      MultiByteToWideChar(CodePage, MB_PRECOMPOSED, PChar(@s[1]),
        - 1, PWideChar(@Result[1]), l - 1);
  end;
end; { StringToWideString }        *)


function DecodeHeader(const encodedHeader : AnsiString) : WideString;
{ IdCoderHeader has a function DecodeHeader that would to the work of
  this entire function. However, in Indy9, it does not parse UTF-8 encoding,
  so we have to write a better decoder that can.

  If porting from Indy9 to Indy10, this function could potentially be
  unnecessary and replaced with a call to 'IdCoderHeader.DecodeHeader()'

  ABOUT ENCODED EMAIL HEADERS:
  '=?' + characterEncoding + '?' + encodingType + '?' + encodedText + '?='
  encodingType - may be Q (quoted printable) or B (base64)
  characterEncoding - is case-insensitive, usually (but not always) UTF-8
  encodedText - what we are trying to extract and then decode/return.
}
const
  encodingCue = '=?';
  lenOfEncodingCue = Length(encodingCue);
  posEncoding = lenOfEncodingCue + 1;
  utf8str = 'utf-8';
  quotedPrintable = '?Q?';
  base64 = '?B?';
var
  decoderStream: TStringStream;
  decoder: TIdDecoder;
  qmarkLoc, startStrToDecode, endStrToDecode, addlLineStart: integer;
  charEncoding, stringToDecode, decodedString, leftoverChars: string;
  transferEncoding: char;
begin
  Result := encodedHeader;

  if (Length(encodedHeader) < 2) OR (encodedHeader[1] <> '=') OR (encodedHeader[2] <> '?')
    then Exit; // return original string for unencoded strings.

  qmarkLoc := PosEx('?', encodedHeader, posEncoding); // 2nd '?' is between charEnc and tranferEnc
  if (qmarkLoc = 0) then Exit; {data integrity check}
  charEncoding := LowerCase(Copy(encodedHeader, posEncoding, qmarkLoc - posEncoding));

  transferEncoding := UpCase(encodedHeader[qmarkLoc+1]); {expected: Q or B}
  if (AnsiStrScan('QB', transferEncoding) = nil) then Exit; {data integrity check}

  startStrToDecode := qmarkLoc + 3; // 3 = length of '?Q?' or '?B?'
  if (encodedHeader[startStrToDecode-1] <> '?') then Exit; {data integrity check}
  endStrToDecode := PosEx('?=', encodedHeader, startStrToDecode);
  if ( endStrToDecode = 0 ) then Exit; {data integrity check}
  stringToDecode := Copy(encodedHeader, startStrToDecode, endStrToDecode - startStrToDecode);

  {Quoted-Printable - note: must replace underscores with spaces because this
   decoder does not do the space conversion automatically}
  if (transferEncoding = 'Q') then
  begin
    stringToDecode := StringReplace(stringToDecode, '_', ' ', [rfReplaceAll]);
    decoder := TIdDecoderQuotedPrintable.Create(nil);
  end
  {Base-64 Encoded}
  else if (transferEncoding = 'B')
    then begin decoder := TIdDecoderMIME.Create(nil); end
  {Invalid transfer encoding}
  else begin Exit; end;

  decoderStream := TStringStream.Create('');
  try
    decoder.DecodeToStream (stringToDecode, decoderStream);
    decodedString := decoderStream.DataString;
  finally
    FreeAndNil(decoder);
  end;

  if (charEncoding = 'utf-8')
  then begin
    { Convert UTF-8 to WideChar }
    Result := UTF8Decode(decodedString);
  end
  else begin
    { The header is not UTF-8, convert from the specified codepage to WideChar }
    Result := AnsiStringToWideString(decodedString, charEncoding);
  end;

  { If the header has another line, check for whether we need to repeat
    parsing on the remainder of the string. Occasionally this happens with
    long Base64-encoded subjects. }
  addlLineStart := PosEx('=?', encodedHeader, endStrToDecode + 2);
  if (addlLineStart <> 0) then
  begin
    leftoverChars := Copy (encodedHeader, addlLineStart,
                           Length(encodedHeader) - addlLineStart + 1);
    Result := Concat(Result,DecodeHeader(leftoverChars));
  end;

end;



end.
