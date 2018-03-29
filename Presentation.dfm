object Form2: TForm2
  Left = 192
  Top = 122
  Width = 696
  Height = 480
  Caption = 'Pr'#233'sentation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object lbNom: TLabel
    Left = 32
    Top = 32
    Width = 49
    Height = 13
    Caption = 'Nom        :'
  end
  object lbPrenom: TLabel
    Left = 32
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Prenoms :'
  end
  object lbMatricule: TLabel
    Left = 32
    Top = 80
    Width = 49
    Height = 13
    Caption = 'Matricule :'
  end
  object lbBeng: TLabel
    Left = 96
    Top = 32
    Width = 50
    Height = 13
    Hint = 'MOB'
    Caption = 'Bneghezal'
    ParentShowHint = False
    ShowHint = True
  end
  object lbMob: TLabel
    Left = 96
    Top = 56
    Width = 69
    Height = 13
    Hint = 'MOB'
    Caption = 'Mamoun Omar'
    ParentShowHint = False
    ShowHint = True
  end
  object lbNumMatricule: TLabel
    Left = 96
    Top = 80
    Width = 72
    Height = 13
    Caption = '200600002560'
  end
  object lbSpecialite: TLabel
    Left = 32
    Top = 104
    Width = 52
    Height = 13
    Caption = 'Sp'#233'cialit'#233' :'
  end
  object lbSpec2MIR: TLabel
    Left = 96
    Top = 104
    Width = 261
    Height = 13
    Hint = 'Nous choisir chaine de Markov'
    Caption = ' Mod'#232'les et M'#233'thodes pour l'#39'Ing'#233'nierie et la Recherche'
    ParentShowHint = False
    ShowHint = True
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 224
    object Quitter1: TMenuItem
      Caption = 'Quitter'
      OnClick = Quitter1Click
    end
  end
end
