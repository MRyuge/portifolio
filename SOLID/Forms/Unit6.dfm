object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SOLID - EXEMPLO'
  ClientHeight = 211
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 280
    Top = 16
    Width = 58
    Height = 13
    Caption = 'Sobre Nome'
  end
  object LabelResultado: TLabel
    Left = 35
    Top = 136
    Width = 45
    Height = 13
  end
  object Label3: TLabel
    Left = 35
    Top = 117
    Width = 63
    Height = 13
    Caption = 'RESULTADO:'
  end
  object Label4: TLabel
    Left = 35
    Top = 69
    Width = 33
    Height = 13
    Caption = 'Cargo:'
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 183
    Width = 451
    Height = 25
    Align = alBottom
    Caption = 'Processar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditNome: TEdit
    Left = 32
    Top = 35
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object EditSobrenome: TEdit
    Left = 280
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object CboCargo: TComboBox
    Left = 35
    Top = 88
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'Gerente'
      'Desenvolvedor')
  end
end
