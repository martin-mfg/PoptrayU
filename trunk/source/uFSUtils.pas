{-------------------------------------------------------------------------------
File System Utilities Class
Copyright © 2012 Jessica Brown
All Rights Reserved.

 * This file is dual licensed; you can use it under the terms of
 * either the GPL, or the BSD license, at your option.
 *
 * I. GPL:
 *
 * This file is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This file is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 * The GNU GPL can be found at:
 *   http://www.gnu.org/copyleft/gpl.html
 *
 * Alternatively,
 *
 * II. BSD license:
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
-------------------------------------------------------------------------------}

unit uFSUtils;

interface
  uses Graphics;

  function GetDataStoragePath( commandLinePath : string = '' ) : string;
  function StringToFont( sFont : String ) : TFont;
  function FontToString( Font : TFont ) : String;

implementation
  uses SHFolder, Dialogs, Windows, Registry, SysUtils, Forms;

{------------------------------------------------------------------------------}
{ Helper function to access the shell command to get special folders           }
{ paths, such as appdata, program files, my documents, etc.                    }
{------------------------------------------------------------------------------}
function GetSpecialFolderPath(folder : integer) : string;
var
  path: array [0..MAX_PATH] of char;
begin
   if Succeeded(SHGetFolderPath(0,folder,0,0,@path[0])) then
     Result := path else Result := '';
end;

{------------------------------------------------------------------------------}
{ Function to determine the place where the app should store user data. Uses   }
{ in precedence (1) Command line parameter (2) Registry setting for location   }
{ (3) App's folder, usually in program files.                                  }
{------------------------------------------------------------------------------}
function GetDataStoragePath( commandLinePath : string = '' ) : string;
var
   Registry: TRegistry;
   iniLocation: Integer;
begin
  // If the user specified the ini folder on the command line, this takes
  // precedence over the registry setting.
  if (commandLinePath <> '') then
    Result := commandLinePath
  else
  begin
    // If PopTrayU key exists in registry, use it to determine where the
    // poptray.ini file is located.

    Registry := TRegistry.Create;
    try
      Registry.RootKey := HKEY_LOCAL_MACHINE;
      if Registry.OpenKey('SOFTWARE\PopTrayU', false) then
      begin
        if Registry.ValueExists('IniPath') then
        begin
          iniLocation := Registry.ReadInteger('IniPath');
          Registry.CloseKey;
          if (iniLocation = CSIDL_APPDATA) or (iniLocation = CSIDL_COMMON_APPDATA) then
            Result := GetSpecialFolderPath(iniLocation)+ '\PopTrayU\';
          //else iniLocation should be program files, so fall through.
        end;
      end;
    finally
      Registry.Free;
    end;

    // if we haven't already set the path, default to the path of this app
    if Length(Result) = 0 then
      Result := ExtractFilePath(Application.ExeName);
  end;

  // make sure path ends in backslash
  if Copy(Result,Length(Result),1) <> '\' then Result := Result + '\';
end;



const
  STR_BOLD    = '|Bold';
  STR_ITALIC  = '|Italic';
  STR_ULINE   = '|Underline';
  STR_STIRKE  = '|Strikeout';

{------------------------------------------------------------------------------}
{ Helper function to convert a serialized representation of a font back into   }
{ a font object.                                                               }
{------------------------------------------------------------------------------}
{ Input String Example: "Arial", 9, [Bold|Italic], [clBlack]                   }
{------------------------------------------------------------------------------}
function StringToFont( sFont : String ) : TFont;
var
  p : integer;
  fontStyle : String;
begin
  Result := TFont.Create;

  // font name
  p    := Pos( ',', sFont );
  Result.Name := Copy( sFont, 2, p-3 );
  Delete( sFont, 1, p );

  // font size
  p    := Pos( ',', sFont );
  Result.Size := StrToInt( Copy( sFont, 2, p-2 ) );
  Delete( sFont, 1, p );

  // font style
  p      := Pos( ',', sFont );
  fontStyle := '|' + Copy( sFont, 3, p-4 );
  Delete( sFont, 1, p );

  // font color
  Result.Color := StringToColor( Copy( sFont, 3, Length( sFont ) - 3 ) );

  // convert string to font style
  Result.Style := [];
  if( Pos(STR_BOLD, fontStyle) > 0 )then Result.Style := Result.Style + [ fsBold ];
  if( Pos(STR_ITALIC, fontStyle) > 0 )then Result.Style := Result.Style + [ fsItalic ];
  if( Pos(STR_ULINE, fontStyle) > 0 )then Result.Style := Result.Style + [ fsUnderline ];
  if( Pos(STR_STIRKE, fontStyle) > 0 )then Result.Style := Result.Style + [ fsStrikeout ];

end;


{------------------------------------------------------------------------------}
{ Helper function to convert TFont objects to a string representation for      }
{ serialization via settings ini file.                                         }
{------------------------------------------------------------------------------}
{ Return Value Example: "Arial", 9, [Bold|Italic], [clBlack]                   }
{------------------------------------------------------------------------------}
function FontToString( Font : TFont ) : String;
var
  fontStyle : String;
begin
  fontStyle := '';
  if (fsBold in Font.Style) then fontStyle := fontStyle + STR_BOLD;
  if (fsItalic in Font.Style) then fontStyle := fontStyle + STR_ITALIC;
  if (fsUnderline in Font.Style) then fontStyle := fontStyle + STR_ULINE;
  if (fsStrikeout in Font.Style) then fontStyle := fontStyle + STR_STIRKE;

  // if string starts with vbar "|" then strip the first character
  if( ( Length( fontStyle ) > 0 ) and ( '|' = fontStyle[1] ) )then
  begin
    fontStyle := Copy( fontStyle, 2, Length( fontStyle ) - 1 );
  end;

  Result := Format( '"%s", %d, [%s], [%s]',
    [ Font.Name, Font.Size, fontStyle, ColorToString( Font.Color ) ] );
end;


end.
