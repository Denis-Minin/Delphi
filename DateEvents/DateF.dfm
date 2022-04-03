object DateForm: TDateForm
  Left = 0
  Top = 0
  Caption = 'DateForm'
  ClientHeight = 344
  ClientWidth = 254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDate: TLabel
    Left = 16
    Top = 16
    Width = 217
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 244
    Width = 22
    Height = 13
    Caption = 'Year'
  end
  object Label2: TLabel
    Left = 32
    Top = 277
    Width = 30
    Height = 13
    Caption = 'Month'
  end
  object Label3: TLabel
    Left = 32
    Top = 302
    Width = 19
    Height = 13
    Caption = 'Day'
  end
  object BtnIncrease: TButton
    Left = 32
    Top = 64
    Width = 81
    Height = 41
    Caption = '&Increase'
    TabOrder = 0
    OnClick = BtnIncreaseClick
  end
  object BtnDecrease: TButton
    Left = 128
    Top = 64
    Width = 89
    Height = 41
    Caption = '&Decrease'
    TabOrder = 1
    OnClick = BtnDecreaseClick
  end
  object BtnAdd10: TButton
    Left = 32
    Top = 120
    Width = 81
    Height = 41
    Caption = '&Add 10'
    TabOrder = 2
    OnClick = BtnAdd10Click
  end
  object BtnSubtract10: TButton
    Left = 128
    Top = 120
    Width = 89
    Height = 41
    Caption = '&Subtract 10'
    TabOrder = 3
    OnClick = BtnSubtract10Click
  end
  object BtnLeap: TButton
    Left = 32
    Top = 176
    Width = 81
    Height = 41
    Caption = '&Leap Year?'
    TabOrder = 4
    OnClick = BtnLeapClick
  end
  object BtnToday: TButton
    Left = 128
    Top = 176
    Width = 89
    Height = 41
    Caption = '&Today'
    TabOrder = 5
    OnClick = BtnTodayClick
  end
  object EditYear: TEdit
    Left = 72
    Top = 240
    Width = 65
    Height = 21
    TabOrder = 6
  end
  object EditMonth: TEdit
    Left = 72
    Top = 272
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object EditDay: TEdit
    Left = 72
    Top = 299
    Width = 65
    Height = 21
    TabOrder = 8
  end
  object BtnRead: TButton
    Left = 152
    Top = 256
    Width = 65
    Height = 25
    Caption = 'Read'
    TabOrder = 9
    OnClick = BtnReadClick
  end
  object BtnWrite: TButton
    Left = 152
    Top = 287
    Width = 65
    Height = 25
    Caption = 'Write'
    TabOrder = 10
    OnClick = BtnWriteClick
  end
end
