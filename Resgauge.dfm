object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
  object Label1: TLabel
    Left = 208
    Top = 13
    Width = 75
    Height = 13
    Caption = #1041#1091#1082#1074#1072' '#1088#1072#1079#1076#1077#1083#1072
  end
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 208
    Top = 59
    Width = 84
    Height = 23
    Caption = #1057#1074#1086#1073#1086#1076#1085#1086' '#1055#1047#1059
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 208
    Top = 32
    Width = 84
    Height = 21
    MaxLength = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 111
    Width = 97
    Height = 25
    Caption = #1057#1074#1086#1073#1086#1076#1085#1086' '#1054#1047#1059
    TabOrder = 3
    OnClick = Button2Click
  end
end
