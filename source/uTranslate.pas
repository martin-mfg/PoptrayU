unit uTranslate;

{-------------------------------------------------------------------------------
POPTRAYU
Copyright (C) 2001-2005  Renier Crause
Copyright (C) 2012 Jessica Brown
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

interface
uses
  Forms, Dialogs, TntForms, StdCtrls;

type
  TLangDirection = (ToEnglish,FromEnglish);

  // translation
  function TranslateDir(st : WideString; LangDirection : TLangDirection) : WideString;
  procedure TranslateFormDir(form : TForm; LangDirection : TLangDirection);
  procedure TranslateFrameDir(frame : TFrame; LangDirection : TLangDirection);
  procedure ReadTranslateStrings;
  procedure SetProp(obj : TObject; PropName : string; ToEnglish : boolean=False);
  procedure GetLanguages;
  procedure RefreshLanguages;
  function TranslateToEnglish(phrase: WideString): WideString;
  function Translate(english: WideString): WideString;
  procedure TranslateFrame(frame : TFrame);
  procedure TranslateForm(form : TForm);
  function TranslateMsg(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; HelpCtx: Integer) : TTntForm;
  function ShowTranslatedDlg(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; HelpCtx: Integer;
    DialogCaption : string = '' ): Integer;
  procedure ChangeItem(cmb : TComboBox; item : integer; st : string);

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------
implementation

uses
  TntClasses, uGlobal, sysutils, StrUtils, TntDialogs, TntComCtrls,
  Windows, uMain, uFrameDefaults, uDM, uRCUtils, TypInfo;

var
  FTranslateStrings : TTntStringList;
  FLastLanguage : integer;


procedure ReadTranslateStrings;
var
  fname : string;
  i : integer;
  newLang : string;
begin
  if Options.Language <> 0 then
  begin
    if not assigned(FTranslateStrings) then
      FTranslateStrings := TTntStringList.Create;
    newLang := TranslateToEnglish(Options.Languages[Options.Language]);
    fname := ExtractFilePath(Application.ExeName)+'languages\'+
             newLang +'.ptlang';
    if FileExists(fname) then
    begin
      if (AnsiCompareStr(newLang, 'Hebrew') = 0) then
      begin
        FTranslateStrings.LoadFromFile(fname);
      end
      else
      FTranslateStrings.LoadFromFile(fname);
      // strip comments
      i := 0;
      while i <= FTranslateStrings.Count-1 do
      begin
        if (Copy(Trim(FTranslateStrings[i]),1,1)='#') or (Pos('=',FTranslateStrings[i]) = 0) then
          FTranslateStrings.Delete(i)
        else
          Inc(i);
      end;
    end;
  end;
  FLastLanguage := Options.Language;
end;

function Translate(english: WideString): WideString;
var
  lookup : WideString;
begin
  // if english then do nothing
  if Options.Language = 0 then
    Result := english
  else begin
    // otherwise translate it
    if not Assigned(FTranslateStrings) or (english='') then
      Result := english
    else begin
      lookup := AnsiReplaceStr(english,'&','');
      lookup := AnsiReplaceStr(lookup,#13#10,'~');
      Result := FTranslateStrings.Values[lookup];
      Result := AnsiReplaceStr(Result,'~',#13#10);

      if Result = '' then Result := english
    end;
  end;
end;

function TranslateToEnglish(phrase: WideString): WideString;
var
  i,P : integer;
  S : WideString;
begin
  phrase := AnsiReplaceStr(phrase,'&','');
  Result := phrase;
  if (phrase = '') or (not(Assigned(FTranslateStrings))) then Exit;
  for i := 0 to FTranslateStrings.Count-1 do
  begin
    S := FTranslateStrings[i];
    P := AnsiPos('=', S);
    if (P <> 0) and (AnsiCompareText(Copy(S, P+1, Length(S)), phrase) = 0) then
    begin
      Result := FTranslateStrings.Names[i];
      Exit;
    end;
  end;
end;

procedure TranslateFrame(frame : TFrame);
begin
  if FLastLanguage <> 0 then
    TranslateFrameDir(frame,ToEnglish);
  if Options.Language <> 0 then
  begin
    ReadTranslateStrings;
    TranslateFrameDir(frame,FromEnglish);
  end;
end;

procedure TranslateForm(form : TForm);
begin
  if (FLastLanguage <> Options.Language) or (form <> frmPopUMain) then
  begin
    if FLastLanguage <> 0 then
      TranslateFormDir(form,ToEnglish);
    if Options.Language <> 0 then
    begin
      ReadTranslateStrings;
      TranslateFormDir(form,FromEnglish);
    end;
  end;
end;


function TranslateMsg(const Msg: string; DlgType: TMsgDlgType;
                                  Buttons: TMsgDlgButtons; HelpCtx: Integer) : TTntForm;
////////////////////////////////////////////////////////////////////////////////
// Non-Modal message.
var
  i : integer;
begin
  Result := WideCreateMessageDialog(Msg, DlgType, Buttons);
  with Result do
  begin
    HelpContext := HelpCtx;
    Position := poScreenCenter;
    FormStyle := fsStayOnTop;
    TranslateForm(Result);
    Caption := Translate(Caption);
    OnClose := frmPopUMain.OnCloseFree;
    for i := 0 to Result.ComponentCount-1 do
      if (Result.Components[i] is TButton) then
        (Result.Components[i] as TButton).OnClick := frmPopUMain.OnClickClose;
    Show;
    SetForegroundWindow(Handle);
  end;
end;

procedure TranslateFrameDir(frame : TFrame; LangDirection : TLangDirection);
var
  i,j : integer;
  TransToEnglish : boolean;
begin
  TransToEnglish := LangDirection = ToEnglish;
  for i := 0 to frame.ComponentCount-1 do
  begin
    // all captions and hints
    SetProp(frame.Components[i],'Caption',TransToEnglish);
    SetProp(frame.Components[i],'Hint',TransToEnglish);
    // list view headers
    if frame.Components[i] is TTntListView then
    begin
      for j := 0 to (frame.Components[i] as TTntListView).Columns.Count-1 do
        SetProp((frame.Components[i] as TTntListView).Column[j],'Caption',TransToEnglish)
    end;
  end;
end;


procedure GetLanguages;
var
  sr : TSearchRec;
  res,i : integer;
  fname,old : string;
begin
  // save selected language
  if Options.Language < Length(Options.Languages) then
    old := TranslateToEnglish(Options.Languages[Options.Language]);
  SetLength(Options.Languages,1);
  Options.Languages[0] := 'English';
  // get ptlang files from PopTray directory
  res := FindFirst(ExtractFilePath(Application.ExeName)+'languages\*.ptlang',faAnyFile,sr);
  while res = 0 do
  begin
    fname := ChangeFileExt(sr.Name,'');
    if (lowercase(fname) <> 'blank') and (lowercase(fname) <> 'language') then
    begin
      SetLength(Options.Languages,Length(Options.Languages)+1);
      Options.Languages[Length(Options.Languages)-1] := fname;
    end;
    res := FindNext(sr);
  end;
//TODOTODOTODO  FindClose(sr);
  // reset to selected language
  for i := 0 to Length(Options.Languages)-1 do
    if Options.Languages[i] = old then
      Options.Language := i;
end;



function TranslateDir(st : WideString; LangDirection : TLangDirection) : WideString;
begin
  if LangDirection = ToEnglish then
    Result := TranslateToEnglish(st)
  else
    Result := Translate(st);
end;

procedure TranslateFormDir(form : TForm; LangDirection : TLangDirection);
var
  i,j,k : integer;
  TransToEnglish : boolean;
begin
  TransToEnglish := LangDirection = ToEnglish;
  for i := 0 to form.ComponentCount-1 do
  begin
    // all captions and hints
    SetProp(form.Components[i],'Caption',TransToEnglish);
    SetProp(form.Components[i],'Hint',TransToEnglish);
    // list view headers
    if form.Components[i] is TTntListView then
    begin
      for j := 0 to (form.Components[i] as TTntListView).Columns.Count-1 do
        SetProp((form.Components[i] as TTntListView).Column[j],'Caption',TransToEnglish)
    end;
  end;
  if form = frmPopUMain then
  with frmPopUMain do
  begin
    // constant strings
    FKB := Translate(FKB);
    // rule accounts
    ChangeItem(cmbRuleAccount,0,TranslateDir(cmbRuleAccount.Items[0],LangDirection));
    // rule areas
    for i := 0 to cmbRuleArea.Items.Count-1 do
      ChangeItem(cmbRuleArea,i,TranslateDir(cmbRuleArea.Items[i],LangDirection));
    // rule compares
    for i := 0 to cmbRuleComp.Items.Count-1 do
      ChangeItem(cmbRuleComp,i,TranslateDir(cmbRuleComp.Items[i],LangDirection));
    // rule status
    for i := 0 to cmbRuleStatus.Items.Count-1 do
      ChangeItem(cmbRuleStatus,i,TranslateDir(cmbRuleStatus.Items[i],LangDirection));
    // rule operator
    for i := 0 to cmbRuleOperator.Items.Count-1 do
      ChangeItem(cmbRuleOperator,i,TranslateDir(cmbRuleOperator.Items[i],LangDirection));
    // languages
    for i := 0 to Length(Options.Languages)-1 do
      Options.Languages[i] := TranslateDir(Options.Languages[i],LangDirection);

    for i := 0 to cmbAuthType.Items.Count-1 do
      ChangeItem(cmbAuthType,i,TranslateDir(cmbAuthType.Items[i],LangDirection));
    for i := 0 to cmbSslVer.Items.Count-1 do
      ChangeItem(cmbSslVer,i,TranslateDir(cmbSslVer.Items[i],LangDirection));

    // options treeview
    for i := 0 to tvOptions.Items.Count-1 do
      tvOptions.Items[i].Text := TranslateDir(tvOptions.Items[i].Text,LangDirection);
    tvOptions.Refresh;
    // Translate column headers for Volunteer Translators Listview (on about page)
    for i := 0 to lvVolunteers.Columns.Count-1 do
      lvVolunteers.Columns[i].Caption :=  TranslateDir(lvVolunteers.Columns[i].Caption, LangDirection);
    // Translate column headers for Component Credits Listview (on about page)
    for i := 0 to lvCredits.Columns.Count-1 do
      lvCredits.Columns[i].Caption :=  TranslateDir(lvCredits.Columns[i].Caption, LangDirection);
    // active frame
    if Assigned(frmPopUMain.frame) then
    begin
      TranslateFrameDir(frame,LangDirection);
      if (frmPopUMain.frame is TframeDefaults) then
        (frmPopUMain.frame as TframeDefaults).ShowLanguages;
    end;
    // popup menus
    for i := 0 to dm.mnuMail.Items.Count-1 do
    begin
      dm.mnuMail.Items[i].Caption := TranslateDir(dm.mnuMail.Items[i].Caption,LangDirection);
      if dm.mnuMail.Items[i].Count > 0 then
        for j := 0 to dm.mnuMail.Items[i].Count-1 do
        begin
          dm.mnuMail.Items[i].Items[j].Caption := TranslateDir(dm.mnuMail.Items[i].Items[j].Caption,LangDirection);
          if dm.mnuMail.Items[i].Items[j].Count > 0 then
            for k := 0 to dm.mnuMail.Items[i].Items[j].Count-1 do
              dm.mnuMail.Items[i].Items[j].Items[k].Caption := TranslateDir(dm.mnuMail.Items[i].Items[j].Items[k].Caption,LangDirection);
        end;
    end;
    for i := 0 to dm.mnuTray.Items.Count-1 do
      dm.mnuTray.Items[i].Caption := TranslateDir(dm.mnuTray.Items[i].Caption,LangDirection);
    for i := 0 to dm.mnuColumns.Items.Count-1 do
    begin
      dm.mnuColumns.Items[i].Caption := TranslateDir(dm.mnuColumns.Items[i].Caption,LangDirection);
      if dm.mnuColumns.Items[i].Count > 0 then
        for j := 0 to dm.mnuColumns.Items[i].Count-1 do
          dm.mnuColumns.Items[i].Items[j].Caption := TranslateDir(dm.mnuColumns.Items[i].Items[j].Caption,LangDirection);
    end;
    // rules re-align
    AutoSizeAllCheckBox(gbRule);
    AutoSizeAllCheckBox(gbActions);
    edRuleWav.Left := chkRuleWav.Left + chkRuleWav.Width + 4;
    edRuleWav.Width := btnEdRuleWav.Left - edRuleWav.Left - 2;
    edRuleEXE.Left := chkRuleEXE.Left + chkRuleEXE.Width + 4;
    edRuleEXE.Width := btnEdRuleEXE.Left - edRuleEXE.Left - 2;
    colRuleTrayColor.Left := chkRuleTrayColor.Left + chkRuleTrayColor.Width + 4;
    colRuleTrayColor.Width := gbActions.Width - colRuleTrayColor.Left - 4;
  end;
end;

procedure SetProp(obj: TObject; PropName: string; ToEnglish : boolean=False);
var
  pi,pi2 : PPropInfo;
  cap,newcap : string;
  tag1 : longint;
begin
  pi := GetPropInfo(obj.ClassInfo,PropName);
  if Assigned(pi) then
  begin
    pi2 := GetPropInfo(obj.ClassInfo,'Tag');
    tag1 := 0;
    if Assigned(pi2) then
     tag1 := GetOrdProp(obj,'Tag');
    if (tag1 = 999) then
       // ignore where tag=999
    else begin
      cap := GetStrProp(obj,PropName);
      if ToEnglish then
        newcap := TranslatetoEnglish(cap)
      else
        newcap := Translate(cap);
      if newcap <> '' then
        SetStrProp(obj,PropName,newcap);
    end;
  end;
end;

//-------------------------------------------------------------- translation ---

procedure ChangeItem(cmb : TComboBox; item : integer; st : string);
var
  tmp : integer;
begin
  tmp := cmb.ItemIndex;
  cmb.Items[item] := st;
  cmb.ItemIndex := tmp;
end;

procedure RefreshLanguages;
begin
  GetLanguages;
  // translate it
  FLastLanguage := -1;
  TranslateForm(frmPopUMain);
end;



//******************************************************************************
// Creates and shows a modal dialog box (eg: for error messages) including
// translating the caption
//******************************************************************************
function ShowTranslatedDlg(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Integer; DialogCaption : string = '' ): Integer;
var
  dlg : TForm;
begin
  dlg := CreateMessageDialog(Msg, DlgType, Buttons);
  with dlg do
  begin
    try
      HelpContext := HelpCtx;
      Position := poScreenCenter;
      TranslateForm(dlg);
      // If a title for the dialog was passed in as a parameter, use it,
      // otherwise, show the default dialog title for the specified dialog
      // type (eg: "Error")
      if (DialogCaption <> '')
        then Caption := Translate(DialogCaption) //use provided dialog title
        else Caption := Translate(Caption);
      Result := ShowModal();
    finally
      Free;
    end;
  end;
end;


initialization
  FLastLanguage := 0;

end.
