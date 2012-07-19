unit uPreview;

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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, StrUtils, Menus, Printers, Tabs,
  ImgList, ToolWin, ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls,
  ActnPopupCtrl, IdBaseComponent, IdMessage, StdActns, BandActn, RichEdit,
  SHDocVw_TLB, ActiveX, OleCtrls, SHDocVw, uHeaderDecoder, TntForms,
  TntStdCtrls, RegExpr;

type
  TfrmPreview = class(TTntForm)
    panOK: TPanel;
    panPreviewFrom: TPanel;
    btnOK: TBitBtn;
    Label1: TTntLabel;
    edFrom: TTntEdit;
    tsMessageParts: TTabSet;
    lvAttachments: TListView;
    spltAttachemnts: TSplitter;
    imlAttachments: TImageList;
    toolbarPreview: TActionToolBar;
    ActionManagerPreview: TActionManager;
    actSave: TAction;
    imlActions: TImageList;
    actPrint: TAction;
    actReply: TAction;
    actDelete: TAction;
    panProgress: TPanel;
    btnStop: TSpeedButton;
    Progress: TProgressBar;
    lblProgress: TTntLabel;
    mnuPreviewToolbar: TPopupActionBarEx;
    Customize1: TMenuItem;
    Msg: TIdMessage;
    actAttachmentOpen: TAction;
    actAttachmentSave: TAction;
    actAttachmentSaveAll: TAction;
    mnuAttachments: TPopupMenu;
    Open2: TMenuItem;
    Save2: TMenuItem;
    N2: TMenuItem;
    SaveAllAttachments2: TMenuItem;
    mnuEdit: TPopupActionBarEx;
    actEditCut: TEditCut;
    actEditCopy: TEditCopy;
    actEditPaste: TEditPaste;
    actEditSelectAll: TEditSelectAll;
    actEditUndo: TEditUndo;
    actEditDelete: TEditDelete;
    Undo1: TMenuItem;
    N3: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    N4: TMenuItem;
    SelectAll1: TMenuItem;
    N5: TMenuItem;
    actEditFont: TFontEdit;
    SelectFont1: TMenuItem;
    actEditReadOnly: TAction;
    ReadOnly1: TMenuItem;
    actCustomize: TAction;
    panPreviewTo: TPanel;
    Label2: TTntLabel;
    edTo: TTntEdit;
    panPreviewDate: TPanel;
    Label4: TTntLabel;
    edDate: TTntEdit;
    panPreviewSubject: TPanel;
    Label3: TTntLabel;
    edSubject: TTntEdit;
    panPreviewXMailer: TPanel;
    Label5: TTntLabel;
    edXMailer: TTntEdit;
    panPreviewCC: TPanel;
    Label6: TTntLabel;
    edCC: TTntEdit;
    imgPreview: TImage;
    memMail: TRichEdit;
    actOpenMessage: TAction;
    WebBrowser1: TWebBrowser;
    ImageToggle: TAction;
    procedure panOKResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnStopClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tsMessagePartsChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure actSaveExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actReplyExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actToggleImages(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAttachmentSaveExecute(Sender: TObject);
    procedure lvAttachmentsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure actAttachmentOpenExecute(Sender: TObject);
    procedure actAttachmentSaveAllExecute(Sender: TObject);
    procedure lvAttachmentsDblClick(Sender: TObject);
    procedure actEditFontAccept(Sender: TObject);
    procedure actEditFontBeforeExecute(Sender: TObject);
    procedure actEditReadOnlyExecute(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEnter(Sender: TObject);
    procedure edMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actOpenMessageExecute(Sender: TObject);
    procedure LoadHtmlIntoBrowser(BrowserComponent: TWebBrowser; RawHtml: string);
    procedure ImageToggleExecute(Sender: TObject);
  protected
    procedure WndProc(var Message: TMessage); override;
  private
    { Private declarations }
    FFilesToDelete : TStringList;
    FToolbarFileName : string;
    FCustomized : boolean;
    FEnter : boolean;
    FTab : integer;
    HtmlImagesEnabled : boolean;
    procedure DeleteTempFiles;
    procedure AddFileToDelete(FileName : string);
    procedure LoadActionManager;
    procedure SaveActionManager;
  public
    { Public declarations }
    FStop : Boolean;
    FDecoded : boolean;
    IniName : string;
    FAccountNum,FMsgNum : integer;
    FUID : string;
    FReplyTo : string;
    FRawMsg : string;
    FBody : string;
    FHtml : string;
    FProtected : boolean;
    procedure GetINI;
    procedure SaveINI;
    function AttachmentIcon(filename : string) : integer;
    procedure ShowMsg;
  end;

var
  frmPreview: TfrmPreview;

implementation

{$R *.DFM}

uses
  uRCUtils, uMain, uDM, uGlobal,
  IniFiles, ShellAPI, CommCtrl, TypInfo;

const
  iconNone = 0;
  iconText = 1;
  iconHTML = 2;
  iconPic = 3;
  iconZip = 4;
  iconEXE = 5;
  iconWarning = 6;
  iconEMail = 7;
  iconMusic = 8;
  iconMovie = 9;

function Translate(english : string) : string;
begin
  Result := frmPopUMain.Translate(english);
end;

procedure TfrmPreview.WndProc(var Message: TMessage);
var
  p: TENLink;
  strURL: string;
begin
  if (Message.Msg = WM_NOTIFY) then
  begin
    if (PNMHDR(Message.lParam).code = EN_LINK) then
    begin
      p := TENLink(Pointer(TWMNotify(Message).NMHdr)^);
      if (p.Msg = WM_LBUTTONDOWN) then
      begin
        SendMessage(memMail.Handle, EM_EXSETSEL, 0, Longint(@(p.chrg)));
        strURL := memMail.SelText;
        memMail.SelLength := 0;
        ShellExecute(Handle, 'open', PChar(strURL), nil, nil, SW_SHOWNORMAL);
      end
    end
  end;

  inherited;
end;

procedure TfrmPreview.DeleteTempFiles;
var
  i : integer;
begin
  // delete MSG temp files
  for i := 0 to Msg.MessageParts.Count - 1 do
  begin
    if Msg.MessageParts.Items[i] is TIdAttachment then
    begin
      DeleteFile((Msg.MessageParts.Items[i] as TIdAttachment).StoredPathName);
    end;
  end;
  // delete execute temp files
  if Assigned(FFilesToDelete) then
  begin
    for i := 0 to FFilesToDelete.Count-1  do
    begin
      DeleteFile(FFilesToDelete[i]);
    end;
    FreeAndNil(FFilestoDelete);
  end;
end;

procedure TfrmPreview.AddFileToDelete(FileName: string);
begin
  if not Assigned(FFilesToDelete) then
    FFilesToDelete := TStringList.Create;
  FFilesToDelete.Add(FileName);
end;

procedure TfrmPreview.LoadActionManager;
var
  S: TFileStream;
  S2,S3 : TMemoryStream;
  st : string;
begin
  if FileExists(FToolbarFileName) then
  begin
    S := TFileStream.Create(FToolbarFileName, fmOpenRead or fmShareDenyWrite);
    try
      S2 := TMemoryStream.Create;
      try
        ObjectBinaryToText(S,S2);
        S2.Position := 0;
        SetLength(st,S2.Size);
        S2.Read(st[1],S2.Size);
        st := AnsiReplaceStr(st,'frmPreviewInstance',Self.Name);
        S2.Clear;
        S2.Write(st[1],Length(st));
        S3 := TMemoryStream.Create;
        try
          S2.Position := 0;
          ObjectTextToBinary(S2,S3);
          S3.Position := 0;
          ActionManagerPreview.LoadFromStream(S3);
        finally
          S3.Free;
        end;
      finally
        S2.Free;
      end;
    finally
      S.Free;
    end;
  end;
end;


procedure TfrmPreview.SaveActionManager;
var
  S2,S3 : TMemoryStream;
  st : string;
begin
  if FCustomized then
  begin
    S2 := TMemoryStream.Create;
    try
      ActionManagerPreview.SaveToStream(S2);
      S3 := TMemoryStream.Create;
      try
        S2.Position := 0;
        ObjectBinaryToText(S2,S3);
        S3.Position := 0;
        SetLength(st,S3.Size);
        S3.Read(st[1],S3.Size);
        st := AnsiReplaceStr(st,Self.Name,'frmPreviewInstance');
        S3.Clear;
        S3.Write(st[1],Length(st));
        S3.Position := 0;
        S2.Clear;
        ObjectTextToBinary(S3,S2);
        S2.Position := 0;
        S2.SaveToFile(FToolbarFileName);
      finally
        S3.Free;
      end;
    finally
      S2.Free;
    end;
  end;
end;


procedure TfrmPreview.GetINI;
var
  Ini : TIniFile;
  NewLeft,NewTop,cnt : integer;
begin
  // load toolbar
  LoadActionManager;
  // load from ini
  Ini := TIniFile.Create(IniName);
  try
    // options
    memMail.ReadOnly := Ini.ReadBool('Preview','ReadOnly',True);
    actEditReadOnly.Checked := memMail.ReadOnly;
    // pos/size
    Self.Width := Ini.ReadInteger('Preview','Width',Self.Width);
    Self.Height := Ini.ReadInteger('Preview','Height',Self.Height);
    if Ini.ReadBool('Preview','Maximized',false) then
      Self.WindowState := wsMaximized
    else
      Self.WindowState := wsNormal;
    NewLeft := Ini.ReadInteger('Preview','Left',Screen.WorkAreaWidth-Self.Width);
    NewTop := Ini.ReadInteger('Preview','Top',Screen.WorkAreaHeight-Self.Height);
    // make sure there isn't already a window at the spot
    cnt := 0;
    while WindowAt(Self,NewLeft,NewTop) do
    begin
      Inc(cnt);
      Inc(NewLeft,32);
      Inc(NewTop,32);
      // off screen?
      if NewTop + Self.Height > Screen.Height then
      begin
        NewTop := 0;
        Inc(NewLeft,40);
      end;
      if NewLeft + Self.Width > Screen.Width then
      begin
        NewLeft := 0;
        Inc(NewTop,40);
      end;
      // couldn't find a spot?
      if (cnt > 100) then
      begin
        NewLeft := 0;
        NewTop := 0;
        Break;
      end;
    end;
    Self.Left := NewLeft;
    Self.Top := NewTop;
    // font
    memMail.Font.Name := Ini.ReadString('Preview','FontName','Courier New');
    memMail.Font.Size := Ini.ReadInteger('Preview','FontSize',8);
    memMail.Font.Color := Ini.ReadInteger('Preview','FontColor',clWindowText);
    SetSetProp(memMail.Font,'Style',Ini.ReadString('Preview','FontStyle',''));
    memMail.Font.Charset := Ini.ReadInteger('Preview','FontCharset',DEFAULT_CHARSET);
    // tab
    FTab := Ini.ReadInteger('Preview','Tab',0);
  finally
     Ini.Free;
  end;
end;

procedure TfrmPreview.SaveINI;
var
  Ini : TIniFile;
begin
  // save toolbar
  SaveActionManager;
  // save to ini
  Ini := TIniFile.Create(IniName);
  try
    // options
    Ini.WriteBool('Preview','ReadOnly',memMail.ReadOnly);
    // pos/size
    Ini.WriteInteger('Preview','Left',Self.Left);
    Ini.WriteInteger('Preview','Top',Self.Top);
    Ini.WriteBool('Preview','Maximized',Self.WindowState = wsMaximized);
    if Self.WindowState <> wsMaximized then
    begin
      Ini.WriteInteger('Preview','Width',Self.Width);
      Ini.WriteInteger('Preview','Height',Self.Height);
    end;
    // font
    Ini.WriteString('Preview','FontName',memMail.Font.Name);
    Ini.WriteInteger('Preview','FontSize',memMail.Font.Size);
    Ini.WriteInteger('Preview','FontColor',memMail.Font.Color);
    Ini.WriteString('Preview','FontStyle',GetSetProp(memMail.Font,'Style'));
    Ini.WriteInteger('Preview','FontCharset',memMail.Font.Charset);
    // tab
    Ini.WriteInteger('Preview','Tab',tsMessageParts.TabIndex);
  finally
     Ini.Free;
  end;
end;

function TfrmPreview.AttachmentIcon(filename: string): integer;
var
  ext : string;
begin
  ext := LowerCase(ExtractFileExt(filename));
  if (filename = 'Body') or (filename = 'Text') or (ext = '.txt') then
    Result := iconText
  else if (ext = '.htm') or (ext = '.html') or (ext = '.url') then
    Result := iconHTML
  else if (ext = '.jpg') or (ext = '.gif') or (ext = '.bmp') or (ext = '.jpeg') or (ext = '.png') then
    Result := iconPic
  else if (ext = '.zip') or (ext = '.rar') or (ext = '.ace') or (ext = '.cab') then
    Result := iconZip
  else if (ext = '.exe') or (ext = '.com') then
    Result := iconEXE
  else if (ext = '.pif') or (ext = '.vbs') or (ext = '.bat') or (ext = '.cmd') or (ext = '.scr') or
          (ext = '.shs') or (ext = '.js') or (ext = '.dll') or (ext = '.lnk') or (ext = '.chm') then
    Result := iconWarning
  else if (ext = '.eml') or (ext = '.msg') then
    Result := iconEMail
  else if (ext = '.mp3') or (ext = '.wav') or (ext = '.wma') then
    Result := iconMusic
  else if (ext = '.avi') or (ext = '.mpg') or (ext = '.mpeg') or (ext = '.mov') or (ext = '.wmv') then
    Result := iconMovie
  else
    Result := iconNone;
end;

procedure TfrmPreview.ShowMsg;
////////////////////////////////////////////////////////////////////////////////
// Show the Message in the preview form
var
  i, strLen: integer;
  aname, mimetype: string;
  decodedSubject: WideString;
begin
  try
    decodedSubject := DecodeHeader(Msg.Subject);
    if (Msg.Subject <> '') then
      Self.Caption := decodedSubject;
    // fixed headers
    edFrom.Text := DecodeHeader(Msg.From.Text);
    if Msg.ReplyTo.Count>0 then
      FReplyTo := DecodeHeader(Msg.ReplyTo[0].Address)
    else
      FReplyTo := DecodeHeader(Msg.From.Address);
    edTo.Text := DecodeHeader(Msg.Recipients.EMailAddresses);
    edSubject.Text := decodedSubject; 
    if (Msg.Date < 1 ) then
      edDate.Text := ''
    else
      edDate.Text := DateTimeToStr(Msg.Date);
    // optional headers
    if Msg.CCList.EMailAddresses <> '' then
    begin
      panPreviewCC.Visible := True;
      edCC.Text := Msg.CCList.EMailAddresses;
    end;
    if Msg.Headers.Values['X-Mailer'] <> '' then
    begin
      panPreviewXMailer.Visible := True;
      edXMailer.Text := Msg.Headers.Values['X-Mailer'];
    end;
    Application.ProcessMessages;
    // body
    FBody := '';
    if Msg.MessageParts.Count > 1 then
    begin
      // with attachments
      if Msg.MessageParts.Items[0] is TidText then
        FBody := FBody + TidText(Msg.MessageParts.Items[0]).Body.Text
      else if Msg.MessageParts.Items[0] is TIdAttachment then
        FBody := FBody + #13#10+frmPopUMain.Translate('Attachment:')+' '+
                         TidAttachment(Msg.MessageParts.Items[0]).ContentType;

      if Msg.MessageParts.Items[1] is TidText then
        FBody := FBody + TidText(Msg.MessageParts.Items[1]).Body.Text;

      lvAttachments.Show;
      spltAttachemnts.Show;
      // attachments
      for i := 0 to Msg.MessageParts.Count-1 do
      begin
        strLen := Pos(';',Msg.MessageParts.Items[i].ContentType) - 1;
        if strLen < 0 then
          strLen := Length(Msg.MessageParts.Items[i].ContentType);
        mimetype := LowerCase(Copy(Msg.MessageParts.Items[i].ContentType,1,strLen));
        { Bug-fix: Some emails do not have a semicolon after the content-type
          because they do not specify the charset in the Content-Type header.
          Previously this would cause the attachment to be treated as plaintext
          even if it was not. An example of the variation in the MIME section
          headers that cause this would be the second of the following two
          examples. The first is the typical case, the second is the erroneous
          case.

          Content-Type: text/html; charset=utf-8
          Content-Transfer-Encoding: quoted-printable

          Content-Transfer-Encoding: 8bit
          Content-Type: text/html
        }


        if mimetype <> 'multipart/alternative' then
        begin
          if (Msg.MessageParts.Items[i] is TIdAttachment) then
            aname := TIdAttachment(Msg.MessageParts.Items[i]).FileName
          else begin
            if i = 0 then aname := 'Body' else aname := 'Text';
            if mimetype = 'text/html' then
            begin
              aname := 'Message.htm';
              FHtml := TidText(Msg.MessageParts.Items[i]).Body.Text;
            end;
          end;
          with lvAttachments.Items.Add do
          begin
            Caption := aname;
            ImageIndex := AttachmentIcon(aname);
            StateIndex := i;
            //Hint := mimetype;
          end;
        end;
      end;
      FDecoded := True;
    end
    else begin
      // no attachments
      if Msg.NoDecode then
        begin
          FBody := Msg.Body.Text;
          FHtml := '';//'<pre>' + Msg.Body.Text + '</pre>';
        end
      else begin
        try
          FBody := FBody + Msg.Body.Text;
          if (Msg.MessageParts.Count>0) then
          begin
            FHtml := TidText(Msg.MessageParts.Items[0]).Body.Text;
            if (Msg.MessageParts.Items[0] is TidText) then
            begin
              if TidText(Msg.MessageParts.Items[0]).Body <> Msg.Body then
              begin
                // This case happens both for plain text and html messages with
                // only one part and no attachments
                FBody := FBody + TidText(Msg.MessageParts.Items[0]).Body.Text;
                if (NOT AnsiContainsStr(Msg.ContentType, 'text/html')) then
                  FHtml := ''; //empty string = show plain-text view on HTML pane
              end;
            end
            else
            begin
              FBody := FBody + frmPopUMain.Translate('Attachment:')+' ['+
                                TidAttachment(Msg.MessageParts.Items[0]).FileName+']';
              FHtml := Msg.Body.Text; //TODO: display attachment in HTML view?
            end;
          end
          else begin
            FBody := Msg.Body.Text;

            {parse out mime type for message}
            strLen := Pos(';',Msg.ContentType) - 1;
            if (strLen < 0) then
            begin
              strLen := Length(Msg.ContentType);
            end;
            mimetype := LowerCase(Copy(Msg.ContentType,1,strLen));

            if (mimetype = 'text/plain') then
            begin
              {Message only has plain text, no HTML, treat as pre-formatted}
              FHtml := '';//'<pre>' + Msg.Body.Text + '</pre>';
            end
            else begin
              {otherwise, presume it's HTML, leave as is}
              FHtml := Msg.Body.Text;
            end;
          end;
        except
          FBody := Msg.Body.Text;
        end;
      end;
      // top x lines
      if Options.TopLines>0 then
        FBody := StrAfter(FRawMsg,#13#10#13#10);
      lvAttachments.Hide;
      spltAttachemnts.Hide;
      FDecoded := False;
    end;
    memMail.Lines.Clear;
    if FTab = 0 then
      memMail.Lines.Add(FBody)
    else if (FTab < tsMessageParts.Tabs.Count) then
      tsMessageParts.TabIndex := FTab;
    panProgress.Visible := False;
    Screen.Cursor := crDefault;
    Accounts[FAccountNum-1].Prot.Disconnect;
  finally
    btnOK.Enabled := True;
    btnOK.SetFocus;
  end;
end;


// -----------------------------------------------------------------------------
// ----------------------------------------------------------------- Events ----
// -----------------------------------------------------------------------------

procedure TfrmPreview.FormCreate(Sender: TObject);
var
  mask: Word;
  i : integer;
begin
  // rich edit with URLs
  mask := SendMessage(Handle, EM_GETEVENTMASK, 0, 0);
  SendMessage(memMail.Handle, EM_SETEVENTMASK, 0, mask or ENM_LINK);
  SendMessage(memMail.Handle, EM_AUTOURLDETECT, Integer(True), 0);
  // clear edit boxes
  edTo.Text := '';
  edFrom.Text := '';
  edSubject.Text := '';
  edDate.Text := '';
  edCC.Text := '';
  edXMailer.Text := '';
  panPreviewCC.Visible := False;
  panPreviewXMailer.Visible := False;
  // translate extras
  for i := 0 to tsMessageParts.Tabs.Count-1 do
    tsMessageParts.Tabs[i] := Translate(tsMessageParts.Tabs[i]);
  // action manager
  FToolbarFileName := ExtractFilePath(Application.ExeName)+'Preview.customize';
  FCustomized := False;
end;

procedure TfrmPreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveINI;
  DeleteTempFiles;
  Action := caFree;
end;

procedure TfrmPreview.panOKResize(Sender: TObject);
begin
  btnOK.Left := (panOK.Width div 2) - (btnOK.Width div 2);
end;

procedure TfrmPreview.btnStopClick(Sender: TObject);
begin
  FStop := True;
  btnOK.Enabled := True;
end;

procedure TfrmPreview.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreview.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := btnOK.Enabled;
end;

procedure TfrmPreview.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    if panProgress.Visible then
      btnStop.Click
    else
      Self.Close;
  end;
end;

procedure TfrmPreview.tsMessagePartsChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
begin
  if NewTab = 2 then
  begin
    if (btnOK.Enabled) then btnOK.SetFocus;
    memMail.Visible := True;
    memMail.Lines.Clear;
    memMail.Lines.Add(FRawMsg);
    lvAttachments.Hide;
    spltAttachemnts.Hide;
    WebBrowser1.Hide;
  end
  else if NewTab = 1 then
  begin
    if (btnOK.Enabled) then btnOK.SetFocus;
    if (FHtml = '') then
    begin
      //email is not HTML, so display email as text on HTML tab
      if (btnOK.Enabled) then btnOK.SetFocus;
      memMail.Visible := True;
      memMail.Lines.Clear;
      memMail.Lines.Add(FBody);
      if lvAttachments.Items.Count > 0 then
      begin
        lvAttachments.Show;
        spltAttachemnts.Show;
      end;
    end
    else begin
      // display email as HTML
      memMail.Visible := False; //hide plain-text message component
      spltAttachemnts.Hide;
      WebBrowser1.Show;
      LoadHtmlIntoBrowser(WebBrowser1, FHtml);

      //show attachments, if any (treat 2 as a special case, no attachments
      //because most emails show up with text and HTML as two sections)
      if (lvAttachments.Items.Count <> 2) AND (lvAttachments.Items.Count > 0) then begin
        lvAttachments.Show;
        spltAttachemnts.Show;
      end
      else begin
        lvAttachments.Hide;
        spltAttachemnts.Hide;
      end;
    end;
  end
  else if NewTab = 0 then
  begin
    if (btnOK.Enabled) then btnOK.SetFocus;
    memMail.Visible := True;
    memMail.Lines.Clear;
    memMail.Lines.Add(FBody);
    if lvAttachments.Items.Count > 0 then
    begin
      lvAttachments.Show;
      spltAttachemnts.Show;
    end;
    WebBrowser1.Hide;
  end;
end;


procedure TfrmPreview.LoadHtmlIntoBrowser(BrowserComponent: TWebBrowser; RawHtml: string);
////////////////////////////////////////////////////////////////////////////////
// Loads static HTML into a web browser component.
const
  imgTag = '(?i)<img[^>]+>';//'(?i)<img[^>]+/(img)?>';
  mapTag = '(?i)</img[^>]+>';
var
  sl: TStringList;
  ms: TMemoryStream;
  regex : TRegExpr;
  cleanedtext : string;
  cleanedtext2 : string;
begin

  if (NOT HtmlImagesEnabled) then
  begin

  regex := TRegExpr.Create; // Create object
  try // ensure memory release

    // filter out IMG tags
    regex.Expression := imgTag;
    if regex.Exec(RawHtml)
      then cleanedtext := regex.Substitute (RawHtml)
      else cleanedtext := RawHtml;

    // filter out MAP tags
    regex.Expression := mapTag;
    if regex.Exec(cleanedtext)
      then cleanedtext2 := regex.Substitute(cleanedtext)
      else cleanedtext2 := cleanedtext;


    finally regex.Free;
  end;

  end
  else cleanedtext2 := RawHtml;

  BrowserComponent.Navigate('about:blank') ;
  while BrowserComponent.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(BrowserComponent.Document) then
  begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := cleanedtext2;
         sl.SaveToStream(ms);
         ms.Seek(0, 0);
         (BrowserComponent.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
  end;
end;

procedure TfrmPreview.actSaveExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Save Message
var
  MsgLines : TStringList;
  SaveDialog : TSaveDialog;
begin
  SaveDialog := TSaveDialog.Create(nil);
  try
    // prepare save dialog
    SaveDialog.DefaultExt := 'eml|txt|msg|';
    SaveDialog.Filter := 'Outlook Express (*.eml)|*.eml|Text File (*.txt)|*.txt|E-Mail Message (*.msg)|*.msg|All Files (*.*)|*.*';
    SaveDialog.Options := [ofOverwritePrompt];
    SaveDialog.FileName := Copy(edSubject.Text,LastDelimiter(':',edSubject.Text)+1,
                                Length(edSubject.Text)-LastDelimiter(':',edSubject.Text));
    SaveDialog.FileName := Trim(CharsReplace(SaveDialog.FileName,['"','.','/','*','\','<','>'],' '));
    // run it
    if SaveDialog.Execute then
    begin
      if Uppercase(ExtractFileExt(SaveDialog.FileName)) = '.TXT' then
      begin
        MsgLines := TStringlist.Create;
        try
          MsgLines.Add('From: '+edFrom.Text);
          MsgLines.Add('To: '+edTo.Text);
          MsgLines.Add('Subject: '+edSubject.Text);
          MsgLines.Add(StringOfChar('-',70)+#13#10);
          MsgLines.Add(memMail.Lines.Text);
          MsgLines.SaveToFile(SaveDialog.FileName);
        finally
          MsgLines.Free;
        end;
      end
      else begin
        MsgLines := TStringlist.Create;
        try
          MsgLines.Add(FRawMsg);
          MsgLines.SaveToFile(SaveDialog.FileName);
        finally
          MsgLines.Free;
        end;
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;



procedure TfrmPreview.actToggleImages(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Print
begin
    //do stuff?

end;


procedure TfrmPreview.actPrintExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Print
var
  i,h : Integer;
begin
  with Printer do
  begin
    BeginDoc;

    Canvas.Font.Name := 'Courier New';
    Canvas.Font.Size := 11;
    // from
    Canvas.Font.Style := [fsBold];
    Canvas.TextOut(100,100,Translate('From')+':  ');
    Canvas.Font.Style := [];
    Canvas.TextOut(100+Canvas.TextWidth(Translate('From')+':  '),100,edFrom.Text);
    h := Canvas.TextHeight(Translate('From')+':  '+edFrom.Text);
    // to
    Canvas.Font.Style := [fsBold];
    Canvas.TextOut(100,100+h,Translate('To')+':  ');
    Canvas.Font.Style := [];
    Canvas.TextOut(100+Canvas.TextWidth(Translate('To')+':  '),100+h,edTo.Text);
    h := h + Canvas.TextHeight(Translate('To')+':  '+edTo.Text);
    // date
    Canvas.Font.Style := [fsBold];
    Canvas.TextOut(100,100+h,Translate('Date')+':  ');
    Canvas.Font.Style := [];
    Canvas.TextOut(100+Canvas.TextWidth(Translate('Date')+':  '),100+h,edDate.Text);
    h := h + Canvas.TextHeight(Translate('Date')+':  '+edDate.Text);
    // subject
    Canvas.Font.Style := [fsBold];
    Canvas.TextOut(100,100+h,Translate('Subject')+':  ');
    Canvas.Font.Style := [];
    Canvas.TextOut(100+Canvas.TextWidth(Translate('Subject')+':  '),100+h,edSubject.Text);
    h := h + Canvas.TextHeight(Translate('Subject')+':  '+edSubject.Text);
    // line
    h := h + 15;
    Canvas.Brush.Color := clBlack;
    Canvas.Rectangle(100,100+h,(Pagewidth - 100),100+h+5);
    h := h + 30;
    Canvas.Brush.Color := clWhite;
    // body
    Canvas.Font.Size := 9;
    for i := 0 to memMail.Lines.Count do
     Canvas.TextOut(100,100+h + (i * Canvas.TextHeight(memMail.Lines.Strings[i])),
                                 memMail.Lines.Strings[i]);

    EndDoc;
  end;
end;


procedure TfrmPreview.actReplyExecute(Sender: TObject);
var
  email,subject,body : string;
begin
  // get headers
  email := FReplyTo;
  subject := edSubject.Text;
  if (Uppercase(Copy(subject,1,3)) <> 'RE:') and (Uppercase(Copy(subject,1,3)) <> 'RE[') then
    subject := 'Re: '+subject;
  if memMail.SelLength > 1 then
    body := memMail.SelText
  else
    body := memMail.Text;
  body := #13#10'> ' + AnsiReplaceStr(body,#13#10,#13#10'> ');
  // send it
  frmPopUMain.SendMail(email,subject,body);
end;


procedure TfrmPreview.actDeleteExecute(Sender: TObject);
begin
  if not(Options.DeleteConfirm) or
     (frmPopUMain.TranslateDlg(
      frmPopUMain.Translate('Delete Message from Server?'),
      mtConfirmation,[mbYes,mbNo],0) = mrYes) then
  begin
    // ask again for protected messages
    if Options.DeleteConfirmProtected then
    begin
      if FProtected then
      begin
        if frmPopUMain.TranslateDlg(Translate('You are trying to delete protected messages.') +#13#10#13#10+
                                   Translate('Are you sure?'),
                                   mtConfirmation,[mbYes,mbNo],0) = mrNo then
        begin
          Exit;
        end;
      end;
    end;
    // delete it
    if frmPopUMain.DeleteMail(FAccountNum,FMsgNum,FUID) then
    begin
      // first hide instead of close, or FAccountNum will get destroyed
      Self.Hide;
      // re-check (and delete)
      if not Options.DeleteNextCheck then
      begin
        frmPopUMain.ShowIcon(FAccountNum,itChecking);
        if frmPopUMain.CheckMail(FAccountNum,false,true) < 0 then
          frmPopUMain.lvMail.Clear;
      end;
    end;
    // now close (and free) window
    Self.Close;
  end;

end;


procedure TfrmPreview.lvAttachmentsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  SomethingSelected : boolean;
begin
  SomethingSelected := not (lvAttachments.Selected = nil);
  actAttachmentOpen.Enabled := SomethingSelected;
  actAttachmentSave.Enabled := SomethingSelected;
end;

procedure TfrmPreview.actAttachmentSaveExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Save Attachment
var
  SaveDialog : TSaveDialog;
begin
  if lvAttachments.Selected = nil then Exit;
  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Options := [ofOverwritePrompt];
    SaveDialog.FileName := lvAttachments.Selected.Caption;
    if SaveDialog.Execute then
    begin
      if Msg.MessageParts[lvAttachments.Selected.StateIndex] is TIdAttachment then
      begin
        if not CopyFile(pchar((Msg.MessageParts[lvAttachments.Selected.StateIndex] as TIdAttachment).StoredPathName),
                        pchar(SaveDialog.FileName),false) then
        begin
          MessageDlg(frmPopUMain.Translate('Failed to Save Attachment.')+#13#10#13#10+
                     SaveDialog.FileName, mtError, [mbOK], 0);
        end;
      end
      else begin
        if Msg.MessageParts[lvAttachments.Selected.StateIndex] is TIdText then
        begin
          (Msg.MessageParts[lvAttachments.Selected.StateIndex] as TIdText).Body.SaveToFile(SaveDialog.FileName);
        end
        else
          MessageDlg(frmPopUMain.Translate('Unknown Attachment Type.'), mtError, [mbOK], 0);
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;

procedure TfrmPreview.actAttachmentOpenExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Open Attachment
var
  OldName,NewName : string;
begin
  if lvAttachments.Selected = nil then Exit;
  // check for malicious filetype
  if lvAttachments.Selected.ImageIndex in [iconEXE,iconWarning] then
  begin
    MessageDlg(frmPopUMain.Translate('Because of the Security Risk, PopTray doesn''t allow the opening of Executable files.'), mtError, [mbOK], 0);
  end
  else begin
    if Msg.MessageParts[lvAttachments.Selected.StateIndex] is TIdAttachment then
    begin
      // rename temp file
      OldName := (Msg.MessageParts[lvAttachments.Selected.StateIndex] as TIdAttachment).StoredPathName;
      NewName := TempFileName(lvAttachments.Selected.Caption);
      if CopyFile(PChar(OldName), PChar(NewName), true) then
      begin
        // run it
        AddFileToDelete(NewName);
        ExecuteFile(NewName,'','',SW_NORMAL);
      end
      else
        MessageDlg(frmPopUMain.Translate('Unable to Copy file.'), mtError, [mbOK], 0);
    end
    else begin
      if Msg.MessageParts[lvAttachments.Selected.StateIndex] is TIdText then
      begin
        if LowerCase(ExtractFileExt(lvAttachments.Selected.Caption)) = '.htm' then
        begin
          NewName := TempFileName(lvAttachments.Selected.Caption);
          // run it
          AddFileToDelete(NewName);
          ExecuteFile(NewName,'','',SW_NORMAL);
        end
        else begin
          // show text in memo
          memMail.Lines.Assign((Msg.MessageParts[lvAttachments.Selected.StateIndex] as TIdText).Body);
        end;
      end
      else
        MessageDlg(frmPopUMain.Translate('Unknown Attachment Type.'), mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmPreview.actAttachmentSaveAllExecute(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to lvAttachments.Items.Count-1 do
  begin
    lvAttachments.Items[i].Selected := True;
    actAttachmentSave.Execute;
  end;
end;

procedure TfrmPreview.lvAttachmentsDblClick(Sender: TObject);
begin
  actAttachmentOpen.Execute;
end;

procedure TfrmPreview.actEditFontAccept(Sender: TObject);
begin
  memMail.Font := actEditFont.Dialog.Font;
end;

procedure TfrmPreview.actEditFontBeforeExecute(Sender: TObject);
begin
  actEditFont.Dialog.Font := memMail.Font;
  {actEditFont.Dialog.Font.Name := memMail.Font.Name;
  actEditFont.Dialog.Font.Size := memMail.Font.Size;
  actEditFont.Dialog.Font.Color := memMail.Font.Color;
  actEditFont.Dialog.Font.Style := memMail.Font.Style;
  actEditFont.Dialog.Font.Charset := memMail.Font.Charset;}
end;

procedure TfrmPreview.actEditReadOnlyExecute(Sender: TObject);
begin
  memMail.ReadOnly := actEditReadOnly.Checked;
end;

procedure TfrmPreview.actCustomizeExecute(Sender: TObject);
begin
  FCustomized := True;
  dm.ShowCustomizeDlg(ActionManagerPreview,False);
end;

procedure TfrmPreview.FormResize(Sender: TObject);
begin
  panProgress.Left := (memMail.Width div 2) - (panProgress.Width div 2);
  panProgress.Top := memMail.Top + (memMail.Height div 2) - (panProgress.Height div 2);
end;

procedure TfrmPreview.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = VK_F6) or (Key = VK_TAB)) then
  begin
    if tsMessageParts.TabIndex=0 then
      tsMessageParts.TabIndex := 1
    else
      tsMessageParts.TabIndex := 0;
  end;
end;

procedure TfrmPreview.edEnter(Sender: TObject);
begin
  (Sender as TTntEdit).SelectAll;
  FEnter := True;
end;

procedure TfrmPreview.edMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FEnter then
  begin
   (Sender as TTntEdit).SelectAll;
   FEnter := False;
  end;
end;

procedure TfrmPreview.actOpenMessageExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Save and execute
var
  fname : string;
  MsgLines : TStringList;
begin
  MsgLines := TStringlist.Create;
  try
    MsgLines.Add(FRawMsg);
    fName := ExtractFilePath(IniName)+'temp.eml';
    MsgLines.SaveToFile(fname);
    ExecuteFile(fname,'','',SW_NORMAL);
  finally
    MsgLines.Free;
  end;
end;


procedure TfrmPreview.ImageToggleExecute(Sender: TObject);
begin
   HtmlImagesEnabled := NOT HtmlImagesEnabled;

   // reload contents of HTML preview
   LoadHtmlIntoBrowser(WebBrowser1, FHtml);
end;

end.
