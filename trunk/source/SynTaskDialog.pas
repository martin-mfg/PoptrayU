/// implement TaskDialog window (native on Vista/Seven, emulated on XP)
// - this unit is a part of the freeware Synopse framework,
// licensed under a MPL/GPL/LGPL tri-license; version 1.15
unit SynTaskDialog;

{
    This file is part of Synopse framework.

    Synopse framework. Copyright (C) 2011 Arnaud Bouchez
      Synopse Informatique - http://synopse.info

    Modified By Jessica Brown (C) 2015 for PopTrayU

  *** BEGIN LICENSE BLOCK *****
  Version: MPL 1.1/GPL 2.0/LGPL 2.1

  The contents of this file are subject to the Mozilla Public License Version
  1.1 (the "License"); you may not use this file except in compliance with
  the License. You may obtain a copy of the License at
  http://www.mozilla.org/MPL

  Software distributed under the License is distributed on an "AS IS" basis,
  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
  for the specific language governing rights and limitations under the License.

  The Original Code is Synopse framework.

  The Initial Developer of the Original Code is Arnaud Bouchez.

  Portions created by the Initial Developer are Copyright (C) 2011
  the Initial Developer. All Rights Reserved.

  Contributor(s):
  Alternatively, the contents of this file may be used under the terms of
  either the GNU General Public License Version 2 or later (the "GPL"), or
  the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
  in which case the provisions of the GPL or the LGPL are applicable instead
  of those above. If you wish to allow use of your version of this file only
  under the terms of either the GPL or the LGPL, and not to allow others to
  use your version of this file under the terms of the MPL, indicate your
  decision by deleting the provisions above and replace them with the notice
  and other provisions required by the GPL or the LGPL. If you do not delete
  the provisions above, a recipient may use your version of this file under
  the terms of any one of the MPL, the GPL or the LGPL.

  ***** END LICENSE BLOCK *****

  Version 1.13
  - initial release

  Version 1.15
  - new tdfQueryMasked function to display * in the tdfQuery editor field

}

interface

{$IFDEF CONDITIONALEXPRESSIONS}  // Delphi 6 or newer
  {$ifndef VER140} // Delphi 6
    {$define WITHUXTHEME} // Themes unit exists till Delphi 7
  {$endif}
{$ENDIF}

uses
  Windows, Classes, SysUtils, Consts,
  {$ifdef USETMSPACK}
  AdvGlowButton, AdvMenus, TaskDialog, TaskDialogEx,
  {$else}
  Menus,
  {$endif}
  Graphics, Forms, Controls, StdCtrls, ExtCtrls, Buttons;

var
  /// will map a generic OK picture from SynTaskDialog.res
  BitmapOK: TBitmap;
  /// will map a generic Arrow picture from SynTaskDialog.res
  BitmapArrow: TBitmap;

  /// will map a default font, according to the available
  // - if Calibri is installed, will use it
  // - will fall back to Tahoma otherwise
  DefaultFont: TFont;

{$ifndef USETMSPACK}
  /// is filled once in the initialization block below
  // - you can set this reference to nil to force Delphi dialogs even
  // on Vista/Seven (e.g. make sense if TaskDialogBiggerButtons=true)
  TaskDialogIndirect: function(AConfig: pointer; Res: PInteger;
    ResRadio: PInteger; VerifyFlag: PBOOL): HRESULT; stdcall;

type
  /// the standard kind of common buttons handled by the Task Dialog
  TCommonButton = (
    cbOK, cbYes, cbNo, cbCancel, cbRetry, cbClose);

  /// set of standard kind of common buttons handled by the Task Dialog
  TCommonButtons = set of TCommonButton;

  /// the available main icons for the Task Dialog
  TTaskDialogIcon = (
    tiBlank, tiWarning, tiQuestion, tiError, tiInformation,tiNotUsed, tiShield);

  /// the available footer icons for the Task Dialog
  TTaskDialogFooterIcon = (
    tfiBlank, tfiWarning, tfiQuestion, tfiError, tfiInformation, tfiShield);

  /// the available configuration flags for the Task Dialog
  // - most are standard TDF_* flags used for Vista/Seven native API
  // (see http://msdn.microsoft.com/en-us/library/bb787473(v=vs.85).aspx
  // for TASKDIALOG_FLAGS)
  // - tdfQuery and tdfQueryMasked are custom flags, implemented in pure Delphi
  // code to handle input query
  // - our emulation code will handle only tdfUseCommandLinks,
  // tdfUseCommandLinksNoIcon, and tdfQuery options
  TTaskDialogFlag = (
    tdfEnableHyperLinks, tdfUseHIconMain, tdfUseHIconFooter,
    tdfAllowDialogCancellation, tdfUseCommandLinks, tdfUseCommandLinksNoIcon,
    tdfExpandFooterArea, tdfExpandByDefault, tdfVerificationFlagChecked,
    tdfShowProgressBar, tdfShowMarqueeProgressBar, tdfCallbackTimer,
    tdfPositionRelativeToWindow, tdfRtlLayout, tdfNoDefaultRadioButton,
    tdfCanBeMinimized, tdfQuery, tdfQueryMasked);

  /// set of available configuration flags for the Task Dialog
  TTaskDialogFlags = set of TTaskDialogFlag;

  /// implements a TaskDialog
  // - will use the new TaskDialog API under Vista/Seven, and emulate it with
  // pure Delphi code and standard themed VCL components under XP or 2K
  // - create a TTaskDialog object/record on the stack will initialize all
  // its string parameters to '' (it's a SHAME that since Delphi 2009, objects
  // are not initialized any more: we have to define this type as object before
  // Delphi 2009, and as record starting with Delphi 2009)
  // - set the appropriate string parameters, then call Execute() with all
  // additional parameters
  // - RadioRes/SelectionRes/VerifyChecked will be used to reflect the state
  // after dialog execution
  // - here is a typical usage:
  // !var Task: TTaskDialog;
  // !begin
  // !  Task.Title := 'Saving application settings';
  // !  Task.Text := 'This is the content';
  // !  Task.Radios := 'Store settings in registry'#10'Store settings in XML file';
  // !  Task.VerificationText := 'Do no ask for this setting next time';
  // !  Task.VerifyChecked := true;
  // !  Task.FooterText := 'XML file is perhaps a better choice';
  // !  Task.Execute([],0,[],tiQuestion,tfiInformation,200);
  // !  ShowMessage(IntToStr(Task.RadioRes)); // 200=Registry, 201=XML
  // !  if Task.VerifyChecked then
  // !    ShowMessage(Task.VerificationText);
  // !end;
  TSynTaskDialog = {$ifdef UNICODE}record{$else}object{$endif}
  public
    /// the caption of the main title bar of the dialog window
    // - if left void, the title of the application main form is used
    Caption: string;
    /// The first line shown on the dialog body, its title.
    // - it is usually shown in a larger bold blue font
    // - any '\n' will be converted into a line feed
    // - if left void, the text is taken from the current dialog icon kind
    Title: string;
    /// the subheading or body text that is displayed under the title in the dialog
    // - any '\n' will be converted into a line feed
    Text: string;
    /// a #13#10 or #10 separated list of custom buttons
    // - they will be identified with an ID number starting at 100
    // - by default, the buttons will be created at the dialog bottom, just
    // like the common buttons
    // - if tdfUseCommandLinks flag is set, the custom buttons will be created
    // as big button in the middle of the dialog window; in this case, any
    // '\n' will be converted as note text (shown with smaller text under native
    // Vista/Seven TaskDialog, or as popup hint within Delphi emulation)
    Buttons: string;
    /// a #13#10 or #10 separated list of custom radio buttons
    // - they will be identified with an ID number starting at 200
    // - aRadioDef parameter can be set to define the default selected value
    // - '\n' will be converted as note text (shown with smaller text under
    // native Vista/Seven TaskDialog, or as popup hint within Delphi emulation)
    Radios: string;
    /// the text to show when the expand button has been pressed to show additional
    ///  details, such as technical information
    // - any '\n' will be converted into a line feed
    // - the Delphi emulation will always show the ExpandedText content (there is no
    // collapse/expand button)
    ExpandedText: string;
    /// the button caption to be displayed when the information is collapsed
    ///  Example: 'Technical Information'
    // - not used under XP: the Delphi emulation will always show the ExpandedText content
    ExpandButtonCaption: string;
    /// the button caption to be displayed when the information is expanded
    // - not used under XP: the Delphi emulation will always show the ExpandedText content
    CollapseButtonCaption: string;
    /// the footer content text
    // - any '\n' will be converted into a line feed
    FooterText: string;
    /// Using the VerificationText string property, you can add a checkbox to
    /// the footer of the task dialog. Example: 'Remember my choice'
    VerificationText: string;
    /// a #13#10 or #10 separated list of items to be selected
    // - if set, a Combo Box will be displayed to select
    // - if tdfQuery is in the flags, the combo box will be in edition mode,
    // and the user will be able to edit the Query text or fill the field
    // with one item of the selection
    // - this selection is not handled via the Vista/Seven TaskDialog, but
    // with our Delphi emulation code (via a TComboBox)
    Selection: string;
    /// some text to be edited
    // - if tdfQuery is in the flags, will contain the default query text
    // - if Selection is set, the
    Query: string;
    /// the selected radio item
    // - first is numeroted 0
    RadioRes: integer;
    /// after execution, contains the selected item from the Selection list
    SelectionRes: integer;
    /// reflect the the bottom most optional checkbox state
    // - if VerificationText is not '', should be set before execution
    // - after execution, will contain the final checkbox state
    VerifyChecked: BOOL;
    /// launch the TaskDialog form
    // - some common buttons can be set via aCommonButtons
    // - in emulation mode, aFlags will handle only tdfUseCommandLinks,
    // tdfUseCommandLinksNoIcon, and tdfQuery options
    // - will return 0 on error, or the Button ID (e.g. mrOk for the OK button
    // or 100 for the first custom button defined in Buttons string)
    // - if Buttons was defined, aButtonDef can set the selected Button ID 
    // - if Radios was defined, aRadioDef can set the selected Radio ID
    // - aDialogIcon and aFooterIcon are used to specify the displayed icons
    // - aWidth can be used to force a custom form width (in pixels)
    // - aParent can be set to any HWND - by default, Application.DialogHandle 
    // - if NonNative is TRUE, the Delphi emulation code will always be used
    function Execute(aCommonButtons: TCommonButtons=[];
      aButtonDef: integer=0; aFlags: TTaskDialogFlags=[];
      aDialogIcon: TTaskDialogIcon=tiInformation;
      aFooterIcon: TTaskDialogFooterIcon=tfiWarning;
      aRadioDef: integer=0; aWidth: integer=0; aParent: HWND=0;
      NonNative: boolean=false): integer;
  end;
{$endif USETMSPACK}

type
{$ifdef USETMSPACK}
  /// a TMS PopupMenu
  TSynPopupMenu = TAdvPopupMenu;

  TSynButtonParent = TAdvGlowButton;
{$else}
  /// a generic VCL popup menu
  TSynPopupMenu = TPopupMenu;

  TSynButtonParent = {$ifdef WITHUXTHEME}TBitBtn{$else}TButton{$endif};
{$endif USETMSPACK}

  /// a generic Button to be used in the User Interface
  // - is always a Themed button: under Delphi 6, since TBitBtn is not themed,
  // it will be a row TButton with no glyph... never mind...
  TSynButton = class(TSynButtonParent)
  protected
{$ifndef USETMSPACK}
    fDropDownMenu: TSynPopupMenu;
{$endif}
  public
    /// create a standard button instance
    // - ModalResult/Default/Cancel properties will be set as exepcted for this
    // kind of button
    constructor CreateKind(Owner: TWinControl; Btn: TCommonButton;
      Left, Right, Width, Height: integer);
    /// set the glyph of the button
    // - set nothing under Delphi 6
    procedure SetBitmap(Bmp: TBitmap);
{$ifndef USETMSPACK}
    /// drop down the associated Popup Menu
    procedure DoDropDown;
    /// the associated Popup Menu to drop down
    property DropDownMenu: TSynPopupMenu read fDropDownMenu write fDropDownMenu;
{$endif}
  end;

/// return the text without the '&' characters within
function UnAmp(const s: string): string;

{
var
  /// if set to TRUE, buttons will be bigger than default
  // - can be useful e.g. for touch screens
  // - will work only for the Delphi emulated version (NonNative=true) of
  // TSynTask - could be combined with @TaskDialogIndirect := nil;
  TaskDialogBiggerButtons: boolean = false;
}


implementation

{$R SynTaskDialog.res}


const
  TD_BTNS: array[TCommonButton] of pointer = (
    @SMsgDlgOK, @SMsgDlgYes, @SMsgDlgNo, @SMsgDlgCancel, @SMsgDlgRetry,
    @SCloseButton);
  TD_BTNMOD: array[TCommonButton] of Integer = (
    mrOk, mrYes, mrNo, mrCancel, mrRetry, mrAbort);

{ TSynButton }

constructor TSynButton.CreateKind(Owner: TWinControl; Btn: TCommonButton;
  Left, Right, Width, Height: integer);
begin
  Create(Owner);
  Parent := Owner;
  SetBounds(Left,Right,Width,Height);
  Caption := LoadResString(TD_BTNS[Btn]);
  ModalResult := TD_BTNMOD[Btn];
  case Btn of
    cbOK:     Default := true;
    cbCancel: Cancel := true;
  end;
  case Btn of
    cbOK: SetBitmap(BitmapOK);
  end;
end;

{$ifndef USETMSPACK}
procedure TSynButton.DoDropDown;
begin
  if DropDownMenu<>nil then
    with ClientToScreen(BoundsRect.TopLeft) do
      DropDownMenu.Popup(X,Y+Height);
end;
{$endif}

procedure TSynButton.SetBitmap(Bmp: TBitmap);
begin
  if Bmp<>nil then
    {$ifdef USETMSPACK}
    Picture.Assign(Bmp);
    {$else}
      {$ifdef WITHUXTHEME}
      Glyph := Bmp;
      {$else}
      // Delphi 6 TBitBtn has no theming -> use generic TButton without glyph
      {$endif}
    {$endif}
end;

function UnAmp(const s: string): string;
var i: integer;
begin
  result := s;
  repeat
    i := pos('&',result);
    if i=0 then
      exit;
    delete(result,i,1);
  until false;
end;


{$ifndef USETMSPACK}

const
  TD_ICONS: array[TTaskDialogIcon] of integer = (
    17, 84, 99, 98, 81, 0, 78);
  TD_ICONS_IDENT: array[TTaskDialogIcon] of pointer =(
    nil, @SMsgDlgWarning, @SMsgDlgConfirm, @SMsgDlgError, @SMsgDlgInformation,
    nil, @SMsgDlgInformation);
  TD_FOOTERICONS: array[TTaskDialogFooterIcon] of integer = (
    17, 84, 99, 98, 65533, 65532);
  WIN_ICONS: array[TTaskDialogIcon] of PChar = (
    nil, IDI_WARNING, IDI_QUESTION, IDI_ERROR, IDI_INFORMATION, nil, IDI_WINLOGO);
  WIN_FOOTERICONS: array[TTaskDialogFooterIcon] of PChar = (
    nil, IDI_WARNING, IDI_QUESTION, IDI_ERROR, IDI_INFORMATION, IDI_WINLOGO);

procedure InitComCtl6;
var OSVersionInfo: TOSVersionInfo;
begin
  OSVersionInfo.dwOSVersionInfoSize := sizeof(OSVersionInfo);
  GetVersionEx(OSVersionInfo);
  if OSVersionInfo.dwMajorVersion<6 then
    @TaskDialogIndirect := nil else
    @TaskDialogIndirect := GetProcAddress(GetModuleHandle(comctl32),'TaskDialogIndirect');
end;

{ TTaskDialog }

type
  // see http://msdn.microsoft.com/en-us/library/bb787473(v=VS.85).aspx
  PTASKDIALOG_BUTTON = ^TTASKDIALOG_BUTTON;
  TTASKDIALOG_BUTTON = packed record
    nButtonID: integer;
    pszButtonText: PWideChar;
  end;

  TTASKDIALOGCONFIG = packed record
    cbSize: integer;
    hwndParent: HWND;
    hInstance: THandle;
    dwFlags: integer;
    dwCommonButtons: integer;
    pszWindowTitle: PWideChar;
    hMainIcon: integer;
    pszMainInstruction: PWideChar;
    pszContent: PWideChar;
    cButtons: integer;
    pButtons: PTASKDIALOG_BUTTON;
    nDefaultButton: integer;
    cRadioButtons: integer;
    pRadioButtons: PTASKDIALOG_BUTTON;
    nDefaultRadioButton: integer;
    pszVerificationText: PWideChar;
    pszExpandedInformation: PWideChar;
    pszExpandedControlText: PWideChar;
    pszCollapsedControlText: PWideChar;
    hFooterIcon: HICON;
    pszFooter: PWideChar;
    pfCallback: pointer;
    lpCallbackData: pointer;
    cxWidth: integer;
  end;


type
  /// a wrapper to a TForm, just used to implement some event handlers
  TTaskDialogForm = class(TForm)
  public
    /// to set Form.Tag := Button.Tag
    procedure ButtonClick(Sender: TObject);
    /// will set the focus to any TSynButton(Form.Tag)
    procedure FormShow(Sender: TObject);
  end;

procedure TTaskDialogForm.ButtonClick(Sender: TObject);
begin
  if (Sender<>nil) and Sender.InheritsFrom(TSynButton) then
  with TSynButton(Sender) do begin
    self.Tag := Tag;
    if Tag in [mrOk..mrNo] then
      self.ModalResult := Tag;
    Close;
  end;
end;

procedure TTaskDialogForm.FormShow(Sender: TObject);
begin
  if (Tag<>0) and TObject(Tag).InheritsFrom(TSynButton) then begin
    TSynButton(Tag).SetFocus;
    Tag := 0;
  end;
end;

function TSynTaskDialog.Execute(aCommonButtons: TCommonButtons;
  aButtonDef: integer; aFlags: TTaskDialogFlags;
  aDialogIcon: TTaskDialogIcon; aFooterIcon: TTaskDialogFooterIcon;
  aRadioDef, aWidth: integer; aParent: HWND; NonNative: boolean): integer;
type WS = {$ifdef UNICODE}string{$else}WideString{$endif};
function CR(const aText: string): string;
begin
  if pos('\n',aText)=0 then
    result := aText else
    result := StringReplace(aText,'\n',#10,[rfReplaceAll]);
end;
function GetNextStringLineToWS(var P: PChar): WS;
var S: PChar;
    {$ifndef UNICODE}tmp: string;{$endif}
begin
  if P=nil then
    result := '' else begin
    S := P;
    while S[0]>=' ' do
      inc(S);
    {$ifdef UNICODE}
    SetString(result,P,S-P);
    result := CR(result);
    {$else}
    SetString(tmp,P,S-P);
    result := WideString(CR(tmp));
    {$endif}
    while (S^<>#0) and (S^<' ') do inc(S); // ignore e.g. #13 or #10
    if S^<>#0 then
      P := S else
      P := nil;
  end;
end;
var aHint: string;
function NoCR(const aText: string): string;
var i: integer;
begin
  result := aText;
  aHint := '';
  i := pos('\n',result);
  if i>0 then begin
    aHint := CR(copy(result,i+2,maxInt));
    SetLength(result,i-1);
  end;
end;
function N(const aText: string): WS;
begin
  if aText='' then
    result := '' else
    result := WS(CR(aText));
end;
var RU: array of Ws;
    RUCount: integer;
    But: array of TTASKDIALOG_BUTTON;
procedure AddRU(Text: string; var n: integer; firstID: integer);
var P: PChar;
begin
  if Text='' then
    exit;
  Text := SysUtils.trim(Text);
  P := @Text[1]; // '\n' handling in GetNextStringLineToWS(P) will change P^
  while P<>nil do begin
    if length(RU)<=RUCount then begin
      SetLength(RU,RUCount+16);
      SetLength(But,RUCount+16);
    end;
    RU[RUCount] := GetNextStringLineToWS(P);
    with But[RUCount] do begin
      nButtonID := n+firstID;
      pszButtonText := pointer(RU[RUCount]);
    end;
    inc(n);
    inc(RUCount);
  end;
end;
var Config: TTASKDIALOGCONFIG;
    i, X, Y, XB, FontHeight: integer;
    Par: TWinControl;
    Panel: TPanel;
    Form: TTaskDialogForm;
    Image: TImage;
    Pic: TIcon;
    Bmp: TBitmap;
    Edit: TEdit;
    Combo: TComboBox;
    List: TStrings;
    B: TCommonButton;
    CommandLink: TSynButton;
    Rad: array of TRadioButton;
    Verif: TCheckBox;
function AddLabel(const Text: string; BigFont: boolean): TLabel;
begin
  result := TLabel.Create(Form);
  result.Parent := Par;
  result.WordWrap := true;
  if BigFont then begin
    result.Font.Height := FontHeight-4;
    result.Font.Color := $B00000;
  end else
    result.Font.Height:= FontHeight;
  result.Left := X;
  result.Top := Y;
  result.Width := aWidth-X-8;
  result.Caption := CR(Text);
  inc(Y,result.Height+16);
end;
procedure AddBevel;
var BX: integer;
begin
  with TBevel.Create(Form) do begin
    Parent := Par;
    if (Image<>nil) and (Y<Image.Top+Image.Height) then
      BX := X else
      BX := 2;
    SetBounds(BX,Y,aWidth-BX-2,2);
  end;
  inc(Y,16);
end;
function AddButton(s: string; Tag: integer): TSynButton;
var WB: integer;
begin
  s := UnAmp(s);
  WB := Form.Canvas.TextWidth(s)+52;
  dec(XB,WB);
  if XB<X shr 1 then begin
    XB := aWidth-WB;
    inc(Y,32);
  end;
  result := TSynButton.Create(Form);
  result.Parent := Par;
  result.SetBounds(XB,Y,WB-12,28);
  result.Caption := s;
  result.Tag := Tag;
  result.OnClick := Form.ButtonClick; // will set F.Tag := Button.Tag
  case Tag of
    mrOk: begin
      result.Default := true;
      if aCommonButtons=[cbOk] then
        result.Cancel := true;
    end;
    mrCancel: result.Cancel := true;
  end;
  if Tag=aButtonDef then
    Form.Tag := integer(result);
end;

begin
  if (byte(aCommonButtons)=0) and (Buttons='') then begin
    aCommonButtons := [cbOk];
    if aButtonDef=0 then
      aButtonDef := mrOk;
  end;
  if Caption='' then
    if Application.MainForm=nil then
      Caption := Application.Title else
      Caption := Application.MainForm.Caption;
  if (Title='') and (TD_ICONS_IDENT[aDialogIcon]<>nil) then
    Title := LoadResString(TD_ICONS_IDENT[aDialogIcon]);
  if aParent=0 then
    aParent := Application.Handle;
  if Assigned(TaskDialogIndirect) and not NonNative and
     not (tdfQuery in aFlags) and (Selection='') then begin
    // use Vista/Seven TaskDialog implementation (not tdfQuery nor Selection)
    FillChar(Config,sizeof(Config),0);
    Config.cbSize := sizeof(Config);
    Config.hwndParent := aParent;
    Config.pszWindowTitle := pointer(N(Caption));
    Config.pszMainInstruction := pointer(N(Title));
    Config.pszContent := pointer(N(Text));
    RUCount := 0;
    AddRU(Buttons,Config.cButtons,100);
    AddRU(Radios,Config.cRadioButtons,200);
    if Config.cButtons>0 then
      Config.pButtons := @But[0];
    if Config.cRadioButtons>0 then
      Config.pRadioButtons := @But[Config.cButtons];
    Config.pszVerificationText := pointer(N(VerificationText));
    Config.pszExpandedInformation := pointer(N(ExpandedText));
    Config.pszExpandedControlText := pointer(N(ExpandButtonCaption));
    Config.pszCollapsedControlText := pointer(N(CollapseButtonCaption));
    Config.pszFooter := pointer(N(FooterText));
    Config.dwCommonButtons := byte(aCommonButtons);
    if (VerificationText<>'') and VerifyChecked then
      include(aFlags,tdfVerificationFlagChecked);
    if (Config.cButtons=0) and (aCommonButtons=[cbOk]) then
      Include(aFlags,tdfAllowDialogCancellation); // just OK -> Esc/Alt+F4 close
    Config.dwFlags := integer(aFlags);
    Config.hMainIcon := TD_ICONS[aDialogIcon];
    Config.hFooterIcon := TD_FOOTERICONS[aFooterIcon];
    Config.nDefaultButton := aButtonDef;
    Config.nDefaultRadioButton := aRadioDef;
    Config.cxWidth := aWidth;
    if TaskDialogIndirect(@Config,@result,@RadioRes,@VerifyChecked)<>S_OK then
      result := 0; // error (mostly invalid argument)
  end else begin
    // use our native (naive?) Delphi implementation
    Verif := nil;
    Combo := nil;
    Edit := nil;
    Form := TTaskDialogForm(TForm.CreateParented(aParent));
    try
      // initialize form properties
      Form.OnShow := Form.FormShow;
      Form.BorderStyle := bsDialog;
      Form.BorderIcons := [];
      Form.Position := poScreenCenter;
      Form.Font := DefaultFont;
      FontHeight := DefaultFont.Height;
      if aWidth=0 then begin
        aWidth := Form.Canvas.TextWidth(Title);
        if (aWidth>300) or (Form.Canvas.TextWidth(Text)>300) or
           (length(Buttons)>40) then
          aWidth := 480 else
          aWidth := 420;
      end;
      Form.ClientWidth := aWidth;
      Form.Height := 200;
      Form.Caption := Caption;
      // create a white panel for the main dialog part
      Panel := TPanel.Create(Form);
      Panel.Parent := Form;
      Panel.Align := alTop;
      {$ifdef WITHUXTHEME}
      Panel.ParentBackground := false; // clWhite not used otherwise
      {$endif}
      Panel.Color := clWhite;
      Panel.BorderStyle := bsNone;
      Par := Panel;
      // handle main dialog icon
      if WIN_ICONS[aDialogIcon]<>nil then  begin
        Image := TImage.Create(Form);
        Image.Parent := Par;
        Image.Picture.Icon.Handle := LoadIcon(0,WIN_ICONS[aDialogIcon]);
        Image.SetBounds(24,24,Image.Picture.Icon.Width,Image.Picture.Icon.Height);
        X := Image.Width+48;
        Y := Image.Top;
      end else begin
        Image := nil;
        X := 24;
        Y := 24;
      end;
      // add main texts (Instruction, Text, Information)
      AddLabel(Title,true);
      AddLabel(Text,false);
      if ExpandedText<>'' then
        // no information collapse/expand yet: it's always expanded
        AddLabel(ExpandedText,false);
      // add command links buttons
      if (tdfUseCommandLinks in aFlags) and (Buttons<>'') then
        with TStringList.Create do
        try
          inc(Y,8);
          Text := SysUtils.trim(Buttons);
          for i := 0 to Count-1 do begin
            CommandLink := TSynButton.Create(Form);
            with CommandLink do begin
              Parent := Par;
              Font.Height := FontHeight-3;
              SetBounds(X,Y,aWidth-16-X,40);
              Caption := NoCR(Strings[i]);
              if aHint<>'' then begin
                ShowHint := true;
                Hint := aHint; // note shown as Hint
              end;
              inc(Y,Height+2);
              Tag := i+100;
              if Tag=aButtonDef then
                Form.Tag := integer(CommandLink);
              OnClick := Form.ButtonClick;
              {$ifdef WITHUXTHEME}
              Margin := 24;
              Spacing := 10;
              if not (tdfUseCommandLinksNoIcon in aFlags) then
                SetBitmap(BitmapArrow);
              {$endif}
            end;
          end;
          inc(Y,24);
        finally
          Free;
        end;
      // add radio buttons
      if Radios<>'' then
        with TStringList.Create do
        try
          Text := SysUtils.trim(Radios);
          SetLength(Rad,Count);
          for i := 0 to Count-1 do begin
            Rad[i] := TRadioButton.Create(Form);
            with Rad[i] do begin
              Parent := Par;
              SetBounds(X+16,Y,aWidth-32-X,6-FontHeight);
              Caption := NoCR(Strings[i]);
              if aHint<>'' then begin
                ShowHint := true;
                Hint := aHint; // note shown as Hint
              end;
              inc(Y,Height);
              Tag := i+200;
              if (i=0) or (Tag=aRadioDef) then
                Checked := true;
            end;
          end;
          inc(Y,24);
        finally
          Free;
        end;
      // add selection list or query editor
      if Selection<>'' then begin
        List := TStringList.Create;
        try
          Combo := TComboBox.Create(Form);
          Combo.Parent := Par;
          Combo.SetBounds(X,Y,aWidth-32-X,22);
          if tdfQuery in aFlags then
            Combo.Style := csDropDown else
            Combo.Style := csDropDownList;
          List.Text := trim(Selection);
          Combo.Items.Assign(List);
          Combo.ItemIndex := List.IndexOf(Query);
          inc(Y,42);
        finally
          List.Free;
        end;
      end else
        if tdfQuery in aFlags then begin
          Edit := TEdit.Create(Form);
          Edit.Parent := Par;
          Edit.SetBounds(X,Y,aWidth-16-X,22);
          Edit.Text := Query;
          if tdfQueryMasked in aFlags then
            Edit.PasswordChar := '*';
          inc(Y,42);
        end;
      // from now we won't add components to the white panel, but to the form
      Panel.Height := Y;
      Par := Form;
      // add buttons and verification checkbox
      if (byte(aCommonButtons)<>0) or (VerificationText<>'') or
         ((Buttons<>'') and not (tdfUseCommandLinks in aFlags)) then begin
        inc(Y,16);
        XB := aWidth;
        if not (tdfUseCommandLinks in aFlags) then
          with TStringList.Create do
          try
            Text := SysUtils.trim(Buttons);
            for i := Count-1 downto 0 do
              AddButton(Strings[i],i+100);
          finally
            Free;
          end;
        for B := high(B) downto low(B) do
          if B in aCommonButtons then
            AddButton(LoadResString(TD_BTNS[B]),TD_BTNMOD[B]);
        if VerificationText<>'' then begin
          Verif := TCheckBox.Create(Form);
          with Verif do begin
            Parent := Par;
            if X+16+Form.Canvas.TextWidth(VerificationText)>XB then begin
              inc(Y,32);
              XB := aWidth;
            end;
            SetBounds(X,Y,XB-X,24);
            Caption := VerificationText;
            Checked := VerifyChecked;
          end;
        end;
        inc(Y,36);
      end else
        XB := 0;
      // add footer text with optional icon
      if FooterText<>'' then begin
        if XB<>0 then
          AddBevel else
          inc(Y,16);
        if WIN_FOOTERICONS[aFooterIcon]<>nil then begin
          Image := TImage.Create(Form);
          Image.Parent := Par;
          Pic := TIcon.Create;
          Bmp := TBitmap.Create;
          try
            Pic.Handle := LoadIcon(0,WIN_FOOTERICONS[aFooterIcon]);
            Bmp.Transparent := true;
            Bmp.Canvas.Brush.Color := Form.Color;
            Bmp.Width := Pic.Width shr 1;
            Bmp.Height := Pic.Height shr 1;
            DrawIconEx(Bmp.Canvas.Handle,0,0,Pic.Handle,Bmp.Width,Bmp.Height,0,
              Bmp.Canvas.Brush.Handle,DI_NORMAL);
            Image.Picture.Bitmap := Bmp;
            Image.SetBounds(24,Y,Bmp.Width,Bmp.Height);
            X := 40+Bmp.Width;
          finally
            Bmp.Free;
            Pic.Free;
          end;
        end else
          X := 24;
        AddLabel(FooterText,false);
      end;
      // display the form
      Form.ClientHeight := Y;
      Form.ShowModal;
      // retrieve the results
      result := Form.Tag;
      if result>=$10000 then
        result := 0; // Tag still = TSynButton -> no ButtonClick event
      if Combo<>nil then begin
        SelectionRes := Combo.ItemIndex;
        Query := Combo.Text;
      end else
      if Edit<>nil then
        Query := Edit.Text;
      if Verif<>nil then
        VerifyChecked := Verif.Checked;
      RadioRes := 0;
      for i := 0 to high(Rad) do
        if Rad[i].Checked then
          RadioRes := i+200;
    finally
      Form.Free;
    end;
  end;
end;

{$endif USETMSPACK}

initialization
  DefaultFont := TFont.Create;
  DefaultFont.Style := [];
  if Screen.Fonts.IndexOf('Calibri')>=0 then begin
    DefaultFont.Height := -14;
    DefaultFont.Name := 'Calibri';
  end else begin
    if Screen.Fonts.IndexOf('Tahoma')>=0 then
      DefaultFont.Name := 'Tahoma' else
      DefaultFont.Name := 'Arial';
    DefaultFont.Height := -13;
  end;
  {$ifndef USETMSPACK}
  InitComCtl6;
  assert(ord(tdfCanBeMinimized)=15);
  {$endif USETMSPACK}
  BitmapOK := TBitmap.Create;
  BitmapOK.LoadFromResourceName(HInstance,'btnOk'); // SQLite3btnok.bmp
  BitmapOK.Transparent := true;
  BitmapArrow := TBitmap.Create;
  BitmapArrow.LoadFromResourceName(HInstance,'btnArrow'); // SQLite3btnArrow.bmp
  BitmapArrow.Transparent := true;

finalization
  DefaultFont.Free;
  BitmapArrow.Free;
  BitmapOK.Free;

end.
