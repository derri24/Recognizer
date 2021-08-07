object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1074#1072#1090#1077#1083#1100' '
  ClientHeight = 241
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 289
    Height = 89
    TabOrder = 0
    OnChange = Memo1Change
  end
  object Memo2: TMemo
    Left = 8
    Top = 136
    Width = 289
    Height = 89
    ReadOnly = True
    TabOrder = 1
  end
  object Button: TButton
    Left = 8
    Top = 105
    Width = 289
    Height = 25
    Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100
    TabOrder = 2
    OnClick = ButtonClick
  end
end
