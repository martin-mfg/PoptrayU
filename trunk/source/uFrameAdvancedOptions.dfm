�
 TFRAMEADVANCEDOPTIONS 0H  TPF0TframeAdvancedOptionsframeAdvancedOptionsLeft Top WidthRHeight� TabOrder OnResizeFrameResize
DesignSizeR�   TLabel
lblTimeOutLeftTopWidthdHeightCaptionConnection TimeOut:  TLabel
lblSecondsLeft� TopWidth(HeightCaptionseconds  TLabellblGetBodyLinesLeft� Top� WidthHeightCaptionlines  TLabellblGetBodySizeLeft� Top� WidthHeightCaptionKB  	TCheckBox	chkOnlineLeftTopbWidthuHeightHint�First check if you are on-line before checking for e-mail.
Used by dial-up users who don't want the dial-up dialog 
to pop-up when you are not connected.
Makes checking a little bit slower.Caption&Check if On-LineTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkIgnoreRetrieveErrorsLeftTop?Width� HeightHint;Ignore errors that occurs while retrieving the header info.CaptionIgnore Retrie&ve ErrorsTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkCheckWhileMinimizedLeftTopQWidth� HeightHint�Do not run the AutoCheck timer event while viewing the PopTray Window.
This is useful to prevent an AutoCheck from happening
while you are manually checking for mail.Caption&AutoCheck only while MinimizedTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  TEdit	edTimeOutLeft� TopWidth)HeightHintDNumber of seconds to wait during connection
before giving an error.TabOrder OnChangeOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkQuickCheckLeftTopWidth� HeightHintQUse the POP3 UIDL command to quickly check if the mail on the server has changed.CaptionEnable &Quick CheckingChecked	State	cbCheckedTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkRetrieveTopLeftToptWidthmHeightHintDWhen previewing a message, only load the
specified number of lines.Caption&Preview Top LinesTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  TEdit
edTopLinesLeftxTopqWidth!HeightHint#Number of message lines to preview.TabOrderOnChangeOptionsChangeOnMouseDownHelpMouseDown  	TCheckBox
chkNoErrorLeftTop-Width� HeightHint�When a connect error occurs, PopTray will display an error message.
If this option is enabled, the error message will only be displayed in the status bar and Tray Hint.CaptionIgnore Connection &ErrorsTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  	TCheckBox
chkGetBodyLeftTop� Width� HeightHint�While checking for new mail, also retrieve the message body.
This will slow down checking, but if gives you the option to check
the body contents in the rules.CaptionRetrieve &Body while CheckingTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  TEditedGetBodyLinesLeft� Top� Width!HeightHint$Maximum number of lines to download.TabOrderOnChangeOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkGetBodySizeLeftTop� Width� HeightHintRRetrieve complete message while checking,
if message smaller than specified size.CaptionOnly download if size less thanTabOrder	OnClickOptionsChangeOnMouseDownHelpMouseDown  TEditedGetBodySizeLeft� Top� Width!HeightHintRRetrieve complete message while checking,
if message smaller than specified size.TabOrder
OnChangeOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkGetBodyLinesLeftTop� Width� HeightHint$Maximum number of lines to download.CaptionLimit download to the firstTabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown  	TCheckBoxchkShowErrorsInBalloonsLeftTop� Width@HeightHint=Changes how errors are shown when the main window is visible.AnchorsakLeftakTopakRight Caption8Show Errors in Balloon Popups (Instead of Modal Dialogs)TabOrderOnClickOptionsChangeOnMouseDownHelpMouseDown   