{-------------------------------------------------------------------------------
Code Page Converter Utility Class
Copyright © 2012 Jessica Brown
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
unit uCodePageConverter;
{ This unit converts strings in from specific code page to WideStrings, using  }
{ the Windows Library function MultiByteToWideString.                          }
{                                                                              }
{ Revision History:                                                            }
{ 01/23/2012 - Initial Release                                                 }

{******************************************************************************}
interface
{******************************************************************************}
uses
  Windows, SysUtils, IniFiles;
  function AnsiStringToWideString(const stringToConvert: AnsiString;
                                  const codePageName: AnsiString): WideString;
  function GetCodePageId(const codePageName : AnsiString) : word;


{******************************************************************************}
implementation
{******************************************************************************}

var
  codePageMap: THashedStringList;

{:Converts an AnsiString of an arbitrary code page to a Unicode WideString
  @param   stringToConvert Ansi string that needs converting
  @param   codePageName Code page to be used in the conversion.
  @returns Converted WideString

 Notes:
  Parameters for MultiByteToWideChar are documented at
  http://msdn.microsoft.com/en-us/library/windows/desktop/dd319072/
}
function AnsiStringToWideString(const stringToConvert: AnsiString;
                                const codePageName: AnsiString): WideString;
const
  dwFlags = 0; {Flags indicating the conversion type}
  cbMultiByte = -1; {size of string: -1 indicates null-terminated strings}
  nullTerminatorLen = 1; {length of null-terminator in characters}
var
  codePage: word;
  lenOfWideStr: integer;
begin
  if (stringToConvert = '') then
    Result := ''
  else begin
    codePage := GetCodePageId(codePageName);

    {1st call: Determines the buffer size/string length of the WideString}
    lenOfWideStr := MultiByteToWideChar(codePage, dwFlags,
                    PChar(@stringToConvert[1]), cbMultiByte, nil, 0);


    if (lenOfWideStr > nullTerminatorLen) then
    begin
      SetLength(Result, lenOfWideStr - nullTerminatorLen);

      {2nd call: Does the actual AnsiString->WideString conversion}
      MultiByteToWideChar(codePage, dwFlags, PChar(@stringToConvert[1]),
          cbMultiByte, PWideChar(@Result[1]), lenOfWideStr - nullTerminatorLen);
    end;
  end;
end; {AnsiStringToWideString}



{:Determines the numeric code page id for a particular code page name.
  @param   codePageName Code page to convert (expected to be lowercase)
  @returns numeric code page id or 1252 (US Windows) if invalid codePageName
}
function GetCodePageId(const codePageName : AnsiString) : word;
begin
  Result := StrToInt(codePageMap.Values[codePageName]);
  if Result = 0 then Result := 1252;
end;


initialization
  { This codePageMap is intended to match the code page ID to code page
    identifiers (code page names) from MSDN, as needed to get the
    parameters needed to call MultiByteToWideChar() See:
    http://msdn.microsoft.com/en-us/library/windows/desktop/dd317756/
    Code page names are lowercase to ease case-insensitive name comparison,
    and sorted alphabetically to speed up search.

    For futher completeness, a potential enhancement would be to include
    various aliases from the IANA Character set list:
    http://www.iana.org/assignments/character-sets
    Alternatively, in part, converting underscores to dashes would increase
    the odds of a successful code-page lookup.
  }
  codePageMap := THashedStringList.Create;

  codePageMap.Add ('asmo-708=708');
  codePageMap.Add ('big5=950');
  codePageMap.Add ('cp1025=21025');
  codePageMap.Add ('cp866=866');
  codePageMap.Add ('cp875=875');
  codePageMap.Add ('csiso2022jp=50221');
  codePageMap.Add ('dos-720=720');
  codePageMap.Add ('dos-862=862');
  codePageMap.Add ('euc-cn=51936');
  codePageMap.Add ('euc-jp=20932');
  codePageMap.Add ('euc-jp=51932'); 
  codePageMap.Add ('euc-kr=51949'); 
  codePageMap.Add ('gb18030=54936'); 
  codePageMap.Add ('gb2312=936');
  codePageMap.Add ('hz-gb-2312=52936');
  codePageMap.Add ('ibm00858=858'); 
  codePageMap.Add ('ibm00924=20924'); 
  codePageMap.Add ('ibm01047=1047');
  codePageMap.Add ('ibm01140=1140'); 
  codePageMap.Add ('ibm01141=1141'); 
  codePageMap.Add ('ibm01142=1142');
  codePageMap.Add ('ibm01143=1143');
  codePageMap.Add ('ibm01144=1144'); 
  codePageMap.Add ('ibm01145=1145'); 
  codePageMap.Add ('ibm01146=1146'); 
  codePageMap.Add ('ibm01147=1147');
  codePageMap.Add ('ibm01148=1148'); 
  codePageMap.Add ('ibm01149=1149'); 
  codePageMap.Add ('ibm037=37'); 
  codePageMap.Add ('ibm1026=1026');
  codePageMap.Add ('ibm273=20273');
  codePageMap.Add ('ibm277=20277'); 
  codePageMap.Add ('ibm278=20278'); 
  codePageMap.Add ('ibm280=20280');
  codePageMap.Add ('ibm284=20284'); 
  codePageMap.Add ('ibm285=20285');
  codePageMap.Add ('ibm290=20290'); 
  codePageMap.Add ('ibm297=20297');
  codePageMap.Add ('ibm420=20420'); 
  codePageMap.Add ('ibm423=20423');
  codePageMap.Add ('ibm424=20424'); 
  codePageMap.Add ('ibm437=437');
  codePageMap.Add ('ibm500=500');
  codePageMap.Add ('ibm737=737'); 
  codePageMap.Add ('ibm775=775'); 
  codePageMap.Add ('ibm850=850');
  codePageMap.Add ('ibm852=852'); 
  codePageMap.Add ('ibm855=855'); 
  codePageMap.Add ('ibm857=857');
  codePageMap.Add ('ibm860=860');
  codePageMap.Add ('ibm861=861'); 
  codePageMap.Add ('ibm863=863');
  codePageMap.Add ('ibm864=864'); 
  codePageMap.Add ('ibm865=865');
  codePageMap.Add ('ibm869=869');
  codePageMap.Add ('ibm870=870'); 
  codePageMap.Add ('ibm871=20871'); 
  codePageMap.Add ('ibm880=20880');
  codePageMap.Add ('ibm905=20905'); 
  codePageMap.Add ('ibm-thai=20838'); 
  codePageMap.Add ('iso-2022-jp=50220');
  codePageMap.Add ('iso-2022-jp=50222');
  codePageMap.Add ('iso-2022-kr=50225'); 
  codePageMap.Add ('iso-8859-1=28591');
  codePageMap.Add ('iso-8859-13=28603'); 
  codePageMap.Add ('iso-8859-15=28605');
  codePageMap.Add ('iso-8859-2=28592');
  codePageMap.Add ('iso-8859-3=28593'); 
  codePageMap.Add ('iso-8859-4=28594'); 
  codePageMap.Add ('iso-8859-5=28595');
  codePageMap.Add ('iso-8859-6=28596'); 
  codePageMap.Add ('iso-8859-7=28597');
  codePageMap.Add ('iso-8859-8=28598');
  codePageMap.Add ('iso-8859-8-i=38598');
  codePageMap.Add ('iso-8859-9=28599'); 
  codePageMap.Add ('johab=1361');
  codePageMap.Add ('koi8-r=20866'); 
  codePageMap.Add ('koi8-u=21866');
  codePageMap.Add ('ks_c_5601-1987=949');
  codePageMap.Add ('macintosh=10000'); 
  codePageMap.Add ('shift_jis=932'); 
  codePageMap.Add ('unicodefffe=1201');
  codePageMap.Add ('us-ascii=20127'); 
  codePageMap.Add ('utf-16=1200'); 
  codePageMap.Add ('utf-32=12000');
  codePageMap.Add ('utf-32be=12001');
  codePageMap.Add ('utf-7=65000'); 
  codePageMap.Add ('utf-8=65001');
  codePageMap.Add ('windows-1250=1250'); 
  codePageMap.Add ('windows-1251=1251');
  codePageMap.Add ('windows-1252=1252');
  codePageMap.Add ('windows-1253=1253'); 
  codePageMap.Add ('windows-1254=1254'); 
  codePageMap.Add ('windows-1255=1255');
  codePageMap.Add ('windows-1256=1256'); 
  codePageMap.Add ('windows-1257=1257'); 
  codePageMap.Add ('windows-1258=1258');
  codePageMap.Add ('windows-874=874');
  codePageMap.Add ('x-chinese-cns=20000'); 
  codePageMap.Add ('x-chinese-eten=20002');
  codePageMap.Add ('x-cp20001=20001');
  codePageMap.Add ('x-cp20003=20003'); 
  codePageMap.Add ('x-cp20004=20004');
  codePageMap.Add ('x-cp20005=20005');
  codePageMap.Add ('x-cp20261=20261');
  codePageMap.Add ('x-cp20269=20269');
  codePageMap.Add ('x-cp20936=20936');
  codePageMap.Add ('x-cp20949=20949'); 
  codePageMap.Add ('x-cp50227=50227');
  codePageMap.Add ('x-ebcdic-koreanextended=20833');
  codePageMap.Add ('x-europa=29001'); 
  codePageMap.Add ('x-ia5=20105');
  codePageMap.Add ('x-ia5-german=20106');
  codePageMap.Add ('x-ia5-norwegian=20108'); 
  codePageMap.Add ('x-ia5-swedish=20107');
  codePageMap.Add ('x-iscii-as=57006');
  codePageMap.Add ('x-iscii-be=57003'); 
  codePageMap.Add ('x-iscii-de=57002');
  codePageMap.Add ('x-iscii-gu=57010');
  codePageMap.Add ('x-iscii-ka=57008'); 
  codePageMap.Add ('x-iscii-ma=57009');
  codePageMap.Add ('x-iscii-or=57007');
  codePageMap.Add ('x-iscii-pa=57011'); 
  codePageMap.Add ('x-iscii-ta=57004');
  codePageMap.Add ('x-iscii-te=57005');
  codePageMap.Add ('x-mac-arabic=10004');
  codePageMap.Add ('x-mac-ce=10029');
  codePageMap.Add ('x-mac-chinesesimp=10008');
  codePageMap.Add ('x-mac-chinesetrad=10002');
  codePageMap.Add ('x-mac-croatian=10082');
  codePageMap.Add ('x-mac-cyrillic=10007');
  codePageMap.Add ('x-mac-greek=10006');
  codePageMap.Add ('x-mac-hebrew=10005');
  codePageMap.Add ('x-mac-icelandic=10079');
  codePageMap.Add ('x-mac-japanese=10001');
  codePageMap.Add ('x-mac-korean=10003');
  codePageMap.Add ('x-mac-romanian=10010');
  codePageMap.Add ('x-mac-thai=10021');
  codePageMap.Add ('x-mac-turkish=10081');
  codePageMap.Add ('x-mac-ukrainian=10017');

  codePageMap.Sorted := true;

finalization
  codePageMap.Free;

end.
