object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 686
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 521
    Top = 660
    Width = 3
    Height = 13
  end
  object img: TImage
    Left = 8
    Top = 8
    Width = 641
    Height = 641
  end
  object edtm: TEdit
    Left = 8
    Top = 657
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtn: TEdit
    Left = 152
    Top = 657
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edta: TEdit
    Left = 296
    Top = 657
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn: TButton
    Left = 440
    Top = 655
    Width = 75
    Height = 25
    Caption = 'Draw'
    TabOrder = 3
    OnClick = btnClick
  end
end
