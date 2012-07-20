object frameAdvancedMisc: TframeAdvancedMisc
  Left = 0
  Top = 0
  Width = 305
  Height = 221
  TabOrder = 0
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 149
    Height = 13
    Caption = 'Mail Client Communication'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 87
    Height = 13
    Caption = 'Rules/Blacklist'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 102
    Height = 13
    Caption = 'Message Deletion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chkLogRules: TCheckBox
    Left = 8
    Top = 144
    Width = 221
    Height = 17
    Hint = 
      'Write all rules actions to a log file.'#13#10'Filename: RULES.LOG in t' +
      'he same directory as PopTray.'
    Caption = 'Log &Rules'
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkUseMAPI: TCheckBox
    Left = 8
    Top = 104
    Width = 221
    Height = 17
    Hint = 
      'Use the Simple MAPI interface of you e-mail client,'#13#10'instead of ' +
      'using a "mailto:" link for replies and new messages.'
    Caption = '&MAPI instead of mailto:'
    TabOrder = 1
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkBlackListSpam: TCheckBox
    Left = 8
    Top = 164
    Width = 221
    Height = 17
    Hint = 
      'Black List will mark the messages as Spam'#13#10'instead of deleting t' +
      'hem.'
    Caption = '&Black List mark as Spam'
    TabOrder = 2
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDeleteConfirm: TCheckBox
    Left = 8
    Top = 21
    Width = 225
    Height = 17
    Hint = 
      'Ask for confirmation before deleting any e-mails.'#13#10'This only wor' +
      'ks for the Delete button.  Deleting messages'#13#10'using rules will n' +
      'ot ask for confirmation.'
    Caption = 'Deletion C&onfirmation'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDeleteConfirmProtected: TCheckBox
    Left = 8
    Top = 41
    Width = 285
    Height = 17
    Hint = 
      'Extra confirmation when you try to delete messages'#13#10'protected by' +
      ' rules or the WhiteList.'
    Caption = '&Extra Confirmation when Deleting Protected Messages'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDeleteNextCheck: TCheckBox
    Left = 8
    Top = 61
    Width = 220
    Height = 17
    Hint = 
      'When deleting mail they will get marked for deletion'#13#10'and only p' +
      'hysically deleted when the next check runs.'
    Caption = 'Delete Mail only on Next Check'
    TabOrder = 5
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
