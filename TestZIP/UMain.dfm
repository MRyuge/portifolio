object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'ZIP Files - Delphi'
  ClientHeight = 406
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000000000000000000000000000000000000000000000
    00000000000070A4BEFF4084A8FF4084A8FF4084A8FF4084A8FF777777FF4084
    A8FF4084A8FF4084A8FF4084A8FF4084A8FF70A4BEFF00000000000000000000
    0000000000004B90B4FF86CFF0FF81CBEDFF81CBEDFF81CBEDFFBBBBBBFF7777
    77FF81CBEDFF86CFF0FF4B8FB1FF86CFF0FF4B90B4FFC0D8E5FF000000000000
    000000000000579EC2FF84CEEEFF7CC7E8FF7CC7E8FFBBBBBBFF777777FF7CC7
    E8FF7CC7E8FF84CEEEFF579BBDFF84CEEEFFF4B62EFF579EC2FF000000000000
    0000000000005FA6CAFF87D0EFFF7FCAE9FF7FCAE9FF7FCAE9FFBBBBBBFF7777
    77FF7FCAE9FF87D0EFFF5FA3C5FF87D0EFFFFEC941FF5FA6CAFF000000000000
    00000000000062A9CDFF8AD3F0FF82CDEBFF82CDEBFFBBBBBBFF777777FF82CD
    EBFF82CDEBFF8AD3F0FF62A6C8FF8AD3F0FFE9E9DBFF62A9CDFF000000000000
    00000000000065ACCFFF8ED6F2FF87D0EDFF87D0EDFF87D0EDFFBBBBBBFF7777
    77FF87D0EDFF8ED6F2FF66AACCFF8ED6F2FFF0F0E6FF65ACCFFF000000000000
    00000000000068AFD3FF92DAF4FF8BD4F0FF8BD4F0FFBBBBBBFF777777FF8BD4
    F0FF8BD4F0FF92DAF4FF69ADCFFF92DAF4FFF8F8F3FF68AFD3FF000000000000
    0000000000006BB2D5FF97DEF6FF90D8F2FF90D8F2FF90D8F2FFBBBBBBFF7777
    77FF90D8F2FF97DEF6FF78BDDCFF78BDDCFFFEFEFDFF6BB2D5FF000000000000
    0000000000006EB5D8FF9BE1F7FF94DBF4FF94DBF4FFBBBBBBFF777777FF9999
    99FF94DBF4FF94DBF4FF9EE4F8FF7BC0DEFF6EB5D8FFCCE5F1FF000000000000
    00000000000071B7DAFF9EE5F9FF98DFF6FF98DFF6FF999999FF76CFF5FF7777
    77FF98DFF6FF98DFF6FF98DFF6FFA1E7FAFF71B7DAFF00000000000000000000
    00000000000074BADDFFA3E8FBFF9DE3F9FF9DE3F9FFBBBBBBFF999999FF7777
    77FF9DE3F9FF9DE3F9FF9DE3F9FFA3E8FBFF74BADDFF00000000000000000000
    00000000000076BCDFFFA6EBFCFFA1E6FBFFA1E6FBFFBBBBBBFFEEEEEEFF7777
    77FFA1E6FBFFA1E6FBFFA1E6FBFFA6EBFCFF76BCDFFF00000000000000000000
    00000000000079BEE1FFA9EEFDFFA4E9FCFFA4E9FCFFBBBBBBFFDDDDDDFF7777
    77FFA4E9FCFFA4E9FCFFA4E9FCFFA9EEFDFF79BEE1FF00000000000000000000
    0000000000007BC0E3FFACF1FFFFA7ECFEFFA7ECFEFFBBBBBBFFCCCCCCFF7777
    77FFA7ECFEFFA7ECFEFFA7ECFEFFACF1FFFF7BC0E3FF00000000000000000000
    0000000000007DC1E3FFB1F5FFFFAEF2FFFFAEF2FFFF999999FFBBBBBBFF9999
    99FFAEF2FFFFAEF2FFFFAEF2FFFFB1F5FFFF7DC1E3FF00000000000000000000
    0000000000009ED1EBFF7EC2E5FF7EC2E5FF7EC2E5FF85B5CEFF999999FF85B5
    CEFF7EC2E5FF7EC2E5FF7EC2E5FF7EC2E5FF9ED1EBFF0000000000000000C003
    AC41C001AC41C001AC41C001AC41C001AC41C001AC41C001AC41C001AC41C001
    AC41C003AC41C003AC41C003AC41C003AC41C003AC41C003AC41C003AC41}
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 387
    Width = 652
    Height = 19
    Cursor = crHandPoint
    AutoHint = True
    Panels = <
      item
        Width = 400
      end
      item
        Text = 'Compactador - by Ryuge'
        Width = 50
      end>
    OnMouseDown = StatusBar1MouseDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 387
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object CoolBar1: TCoolBar
      Left = 1
      Top = 1
      Width = 650
      Height = 29
      Bands = <
        item
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 22
          Width = 644
        end>
      object ToolBar1: TToolBar
        Left = 11
        Top = 0
        Width = 635
        Height = 22
        AutoSize = True
        Caption = 'ToolBar1'
        Images = ImageList1
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Margins.Top = 5
          Action = ActionNovoZIP
        end
        object ToolButton3: TToolButton
          Left = 23
          Top = 0
          Action = ActionOpen
        end
        object ToolButton4: TToolButton
          Left = 46
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object ToolButton2: TToolButton
          Left = 54
          Top = 0
          Action = ActionAddFiles
        end
        object ToolButton7: TToolButton
          Left = 77
          Top = 0
          Action = ActionExtract
        end
        object ToolButton6: TToolButton
          Left = 100
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 4
          Style = tbsSeparator
        end
        object ToolButton5: TToolButton
          Left = 108
          Top = 0
          Action = ActionTest
        end
      end
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 49
      Width = 650
      Height = 337
      Align = alClient
      ColCount = 6
      Constraints.MinWidth = 650
      Ctl3D = False
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentCtl3D = False
      TabOrder = 1
      ColWidths = (
        205
        93
        104
        64
        69
        73)
    end
    object pnlName: TPanel
      Left = 1
      Top = 30
      Width = 650
      Height = 19
      Hint = 'Nome do arquivo'
      Align = alTop
      BevelOuter = bvNone
      Caption = '...'
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object pnlArrastar: TPanel
      Left = 137
      Top = 181
      Width = 392
      Height = 57
      BorderStyle = bsSingle
      Caption = '           Utilize a op'#231#227'o de arrastar e soltar arquivos aqui.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object imgArrastar: TImage
        Left = 16
        Top = 8
        Width = 36
        Height = 36
        Picture.Data = {
          07544269746D6170660F0000424D660F00000000000036000000280000002400
          0000240000000100180000000000300F00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEEEEEEDCECDCDAEACAB96939389878688868592908FA8A6A6C7C6C6E8E8E8FC
          FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFCFCFCD9D8D89E9C9B6F6C6B5754534F4B4A4F4B4A4F4B4A4F4B4A4F
          4B4A4F4B4A555150686564939090CECDCDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E39693935C58574F4B4A4F4B4A4F4B4A52
          4E4D5A5756615D5C615D5C5C5857534F4E4F4B4A4F4B4A4F4B4A565251868483
          D6D6D5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC4C3C26966654F4B4A4F
          4B4A534F4E736F6EA29E9EC6C4C3DCDADAE7E5E5E8E6E6DFDDDCCCCAC9AAA7A7
          7C79785753534F4B4A4F4B4A5E5B5AB0AEAEF8F8F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB1
          AFAF5955544F4B4A504C4B787574C2C0C0F1EFEFFEFDFDFFFFFFFDFCFCE0DEDE
          D6D4D4F7F6F6FFFFFFFFFEFEF6F4F4CFCCCC87838254504F4F4B4A534F4E9A98
          98F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEB3B2B15652514F4B4A585453A5A2A1F0EEEEFFFFFFFEFDFD
          FDFCFCFFFEFEC6C3C3605C5B5652519E9B9AF9F8F8FEFCFCFEFCFCFFFEFEF7F6
          F5B8B6B6615E5D4F4B4A504C4B9A9898F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8C85B57564F4B4A5C5958BCB9B9
          FCFBFBFEFDFDFDFCFCFDFCFCFFFDFDE7E5E56E6B6A4F4B4A4F4B4A575352C2C0
          C0FFFEFEFDFCFCFDFCFCFEFCFCFEFEFED0CECE6966654F4B4A534F4EB0AEAEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E8706D6C
          4F4B4A575352B9B7B7FEFDFDFEFCFCFDFCFCFDFCFCFEFCFCF9F8F89591914F4B
          4A4F4B4A4F4B4A4F4B4A6E6B6AE6E5E4FFFDFDFDFCFCFDFCFCFEFCFCFFFEFED0
          CECE615E5D4F4B4A5F5B5BD6D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA3A1A04F4B4A4F4B4A9D9A9AFBFAFAFEFCFCFDFCFCFDFCFCFDFC
          FCFFFEFEC0BEBE5652514F4B4A4F4B4A4F4B4A4F4B4A4F4B4A959392F9F8F8FE
          FCFCFDFCFCFDFCFCFEFCFCFFFEFEB8B6B654504F4F4B4A878484F8F8F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E46561604F4B4A706B6AEAE9E8FFFD
          FDFDFCFCFDFCFCFDFCFCFFFEFEE4E3E26C68684F4B4A4F4B4A4F4B4A4F4B4A4F
          4B4A4F4B4A565251C1BFBFFFFEFEFDFCFCFDFCFCFDFCFCFEFCFCF7F6F5878383
          4F4B4A565251CDCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AFAE4F4B
          4A4F4B4AB3B1B0FFFEFEFDFCFCFDFCFCFDFCFCFEFCFCF8F7F7918E8D4F4B4A4F
          4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A6D6A69E6E4E4FFFDFDFDFCFC
          FDFCFCFDFCFCFFFEFECFCDCD5753534F4B4A939090FDFDFDFFFFFFFFFFFFFFFF
          FFFFFFFFF8F7F7807D7D4F4B4A666261E7E5E5FFFDFDFDFCFCFDFCFCFDFCFCFF
          FEFEBDBBBA54504F4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A
          4F4B4A949190F9F8F8FEFCFCFDFCFCFDFCFCFEFCFCF6F4F47C79784F4B4A6965
          64E8E7E7FFFFFFFFFFFFFFFFFFFFFFFFE2E2E1635F5E4F4B4A8C8988FBFAFAFE
          FCFCFDFCFCFDFCFCFFFEFEE2E0E06966654F4B4A4F4B4A4F4B4A4F4B4A4F4B4A
          4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A565251C1BEBEFFFEFEFDFCFCFDFCFCFDFC
          FCFFFEFEAAA7A74F4B4A555150C7C6C6FFFFFFFFFFFFFFFFFFFFFFFFC9C8C855
          52514F4B4AAEACABFFFFFFFDFCFCFDFCFCFEFCFCF7F6F68E8B8A4F4B4A4F4B4A
          4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A6D69
          68E5E3E3FFFDFDFDFCFCFDFCFCFFFFFFCCCAC9534F4E4F4B4AA8A6A6FFFFFFFF
          FFFFFFFFFFFFFFFFB6B4B4504C4B514D4CC4C2C1FFFFFFFDFCFCFDFCFCFFFEFE
          B9B7B754504F4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B
          4A4F4B4A4F4B4A4F4B4A4F4B4A93908FF9F8F8FEFCFCFDFCFCFFFEFEDEDCDC5C
          58574F4B4A939090FFFFFFFFFFFFFFFFFFFFFFFFACAAA94F4B4A534F4ECECCCC
          FFFFFFFDFCFCFFFDFDDFDEDD6763634F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B
          4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A555150C0BDBDFF
          FDFDFDFCFCFFFDFDE5E4E4615D5C4F4B4A888685FFFFFFFFFFFFFFFFFFFFFFFF
          ADABAB4F4B4A534F4ECDCBCBFFFFFFFEFCFCFAF9F8908C8C4F4B4A4F4B4A4F4B
          4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F
          4B4A4F4B4A4F4B4A706D6CEDEBEBFEFDFDFFFDFDE5E3E3615D5C4F4B4A8A8787
          FFFFFFFFFFFFFFFFFFFFFFFFB9B7B7514D4C504C4BC1BEBEFFFFFFFEFCFCF3F1
          F1726F6E4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F
          4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A4F4B4A5E5B5AE2E0E0FFFEFEFFFEFE
          DBD9D95A57564F4B4A969493FFFFFFFFFFFFFFFFFFFFFFFFCECDCD5753524F4B
          4AA8A6A5FFFEFEFEFCFCFDFBFBAFACAC5E5A595854535955545955545A575659
          5554514D4C4F4B4A4F4B4A534F4E5C59585D59585E5A595F5B5A5F5C5B635E5D
          A3A0A0F9F7F7FEFCFCFFFFFFC6C4C3524E4D4F4B4AAEACABFFFFFFFFFFFFFFFF
          FFFFFFFFE7E7E66763624F4B4A84807FF9F8F8FEFCFCFEFCFCFAF9F9E1DFDFD9
          D7D6DAD8D8DBD9D9DCDADAD2D0CF6864634F4B4A4F4B4A7F7B7BDFDDDDE1DFDF
          E2E0E0E3E1E1E3E1E1E8E6E6FAF9F9FEFCFCFDFCFCFFFDFDA19E9E4F4B4A5754
          53CECDCDFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB8886854F4B4A605C5BE0DEDEFF
          FEFEFDFCFCFEFCFCFFFEFEFFFEFEFFFEFEFFFEFEFFFFFFF0EFEF6C69684F4B4A
          4F4B4A8C8988FEFDFDFFFEFEFFFEFEFFFEFEFFFDFDFFFDFDFEFCFCFDFCFCFEFD
          FDF1EFEF74706F4F4B4A6F6C6BEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC
          BABA504C4B4F4B4AA6A3A2FEFDFDFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
          FEFDFDEEECEC6A66654F4B4A4F4B4A8E8B8AFDFBFBFDFCFCFDFCFCFDFCFCFDFC
          FCFDFCFCFDFCFCFDFCFCFFFFFFC2C0C0534F4E4F4B4A9E9C9BFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFECEBEB6E6A694F4B4A656160DFDEDEFFFEFEFDFCFC
          FDFCFCFDFCFCFDFCFCFDFCFCFEFDFDEDEBEB6965644F4B4A4F4B4A908D8CFDFC
          FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFDFDF0EEEE7875744F4B4A5C
          5958D9D8D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B1B0504C4B
          4F4B4A8B8887F5F4F4FEFDFDFDFCFCFDFCFCFDFCFCFDFCFCFFFDFDECEAEA6863
          634F4B4A4F4B4A928F8EFEFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFCFCFC
          FBFBA5A2A14F4B4A4F4B4A969493FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF2F2F27F7C7B4F4B4A524E4DA3A0A0F9F8F8FEFDFDFDFCFCFDFC
          FCFDFCFCFFFDFDEBEAE96663624F4B4A4F4B4A949190FEFCFCFDFCFCFDFCFCFD
          FCFCFDFCFCFEFCFCFEFDFDBCB9B95854534F4B4A6A6766E3E2E2FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D96663624F4B4A5450
          4FA3A0A0F5F4F4FFFEFEFDFCFCFDFCFCFEFDFDEFEEEE6D6A694F4B4A4E4B499E
          9B9BFFFDFDFDFCFCFDFCFCFDFCFCFFFDFDFBFAFAB9B7B65C59584F4B4A595554
          C4C3C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFC9C7C7605C5B4F4B4A524E4D8A8887E0DEDEFEFDFDFFFEFEFEFCFCFD
          FBFBB3B1B0656160757271DAD8D8FFFDFDFEFCFCFFFDFDFFFEFEEAE9E99D9A9A
          5753524F4B4A565251B1AFAFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C7C76663624F4B4A4F4B4A64
          6160A6A3A2E0DEDEF9F8F8FFFEFEFDFCFCECEAEAF2F1F1FFFFFFFFFFFFFBFAFA
          E7E5E5B3B1B0706B6A4F4B4A4F4B4A5B5756B3B2B1FBFBFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDBDADA7E7B7A514D4C4F4B4A4F4B4A5F5C5B84807FA8A6A5C2BFBFCECCCC
          CFCDCDC4C2C1AEACAB8B8887666261504C4B4F4B4A4F4B4A706C6CC9C8C8FDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2B3B1B06D6A69514D4C4F4B4A
          4F4B4A4F4B4A504C4B534F4E534F4E514D4C4F4B4A4F4B4A4F4B4A4F4B4A6360
          5FA3A1A0EAE9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEDECECBCBABA888584676362575352514D4C4F4B4A4F4B4A504C4B5551
          50635F5E807D7CB1AFAEE5E4E4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE7E7E6CECDCDB9B7
          B7ADABABACAAA9B5B4B3C9C8C8E2E2E1F8F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 472
    Top = 176
    object ActionNovoZIP: TAction
      Caption = '&Novo'
      Hint = 'Criar um novo arquivo ZIP'
      ImageIndex = 0
      OnExecute = ActionNovoZIPExecute
    end
    object ActionAddFiles: TAction
      Caption = '&Adicionar arquivo'
      Hint = 'Adiciona pastas o arquivos compactado'
      ImageIndex = 1
      OnExecute = ActionAddFilesExecute
    end
    object ActionOpen: TAction
      Caption = 'A&brir arquivos'
      Hint = 'Abrir arquivo compactado'
      ImageIndex = 2
      OnExecute = ActionOpenExecute
    end
    object ActionTest: TAction
      Caption = '&Testar'
      Hint = 'Testar um arquivo existente'
      ImageIndex = 3
      OnExecute = ActionTestExecute
    end
    object ActionExtract: TAction
      Caption = 'Extrair arquivos'
      Hint = 'Extrair arquivos compactados'
      ImageIndex = 4
      OnExecute = ActionExtractExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'A'#241'adir ficheros'
    Left = 472
    Top = 232
  end
  object ImageList1: TImageList
    Left = 528
    Top = 176
    Bitmap = {
      494C010105000900080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000000000000070A4BE004084
      A8004084A8004084A8004084A800777777004084A8004084A8004084A8004084
      A8004084A80070A4BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B90B40086CF
      F00081CBED0081CBED0081CBED00BBBBBB007777770081CBED002727BF001414
      AD004242CD004B90B400C0D8E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000579EC20084CE
      EE007CC7E8007CC7E800BBBBBB00777777007CC7E8007CC7E8001A1AB300AAAA
      FF003737B300A5A5DD00579EC200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005FA6CA0087D0
      EF007FCAE9007FCAE9004A4ADC006969F7004949DE002F2FC7002121BA008989
      EF00AAAAFF003B3BBC00A6A6E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062A9CD008AD3
      F00082CDEB0082CDEB004C4CDF007474FC008282FA009C9CFE00AAAAFF00AAAA
      FF00AAAAFF00AAAAFF003E3EC3003E3EC3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000065ACCF008ED6
      F20087D0ED0087D0ED004D4DE1006F6FFA005454E6003D3DD4003131CA008C8C
      F200AAAAFF004242CC00A9A9E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068AFD30092DA
      F4008BD4F0008BD4F000BBBBBB00777777008BD4F0008BD4F0003939D200AAAA
      FF004747D500ABABEB0068AFD300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BB2D50097DE
      F60090D8F20090D8F20090D8F200BBBBBB007777770090D8F2004D4DE3004242
      DB004E4EE300FEFEFD006BB2D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006EB5D8009BE1
      F70094DBF40094DBF400BBBBBB00777777009999990094DBF40094DBF4009EE4
      F8007BC0DE006EB5D800CCE5F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000071B7DA009EE5
      F90098DFF60098DFF6009999990076CFF5007777770098DFF60098DFF60098DF
      F600A1E7FA0071B7DA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000074BADD00A3E8
      FB009DE3F9009DE3F900BBBBBB0099999900777777009DE3F9009DE3F9009DE3
      F900A3E8FB0074BADD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000076BCDF00A6EB
      FC00A1E6FB00A1E6FB00BBBBBB00EEEEEE0077777700A1E6FB00A1E6FB00A1E6
      FB00A6EBFC0076BCDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000079BEE100A9EE
      FD00A4E9FC00A4E9FC00BBBBBB00DDDDDD0077777700A4E9FC00A4E9FC00A4E9
      FC00A9EEFD0079BEE10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BC0E300ACF1
      FF00A7ECFE00A7ECFE00BBBBBB00CCCCCC0077777700A7ECFE00A7ECFE00A7EC
      FE00ACF1FF007BC0E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007DC1E300B1F5
      FF00AEF2FF00AEF2FF0099999900BBBBBB0099999900AEF2FF00AEF2FF00AEF2
      FF00B1F5FF007DC1E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009ED1EB007EC2
      E5007EC2E5007EC2E50085B5CE009999990085B5CE007EC2E5007EC2E5007EC2
      E5007EC2E5009ED1EB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3009B9B91008E8E
      7D008E8E7D008E8E7D008E8E7D00777777008E8E7D008E8E7D008E8E7D008E8E
      7D008E8E7D009B9B9100D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070A4BE004084
      A8004084A8004084A8004084A800777777004084A8004084A8004084A8004084
      A8004084A80070A4BE000000000000000000000000000000000070A4BE004B9E
      02004B9E02004B9E02004B9E02004B9E02004B9E02004B9E02004084A8004084
      A8004084A80070A4BE000000000000000000000000000000000099998800FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00BBBBBB0077777700FDFDFB00FDFDFA00FCFC
      F800FEFEF9009999880000000000000000000000000000000000B0B8B900B0B8
      B900B0B8B900B0B8B900B0B8B900B0B8B900B0B8B900B0B8B900B0B8B900B0B8
      B900B0B8B900B0B8B900000000000000000000000000000000004B90B40086CF
      F00081CBED0081CBED0081CBED00BBBBBB007777770081CBED0086CFF0004B8F
      B10086CFF0004B90B400C0D8E5000000000000000000000000004B90B4004B9E
      020079A84D00A5BF8C00FFFFFF0079A84D0079A84D004B9E020086CFF0004B8F
      B10086CFF0004B90B400C0D8E500000000000000000000000000A7A79600FFFF
      FF00FFFFFF00FEFEFE00BBBBBB0077777700FCFCF900FBFBF800FAFAF600F8F8
      F400FBFBF600A7A79600000000000000000000000000000000004A4FAF004A4F
      AF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4F
      AF004A4FAF004A4FAF0000000000000000000000000000000000579EC20084CE
      EE007CC7E8007CC7E800BBBBBB00777777007CC7E8007CC7E80084CEEE00579B
      BD0084CEEE00F4B62E00579EC200000000000000000000000000579EC2004B9E
      020099B87E00FFFFFF00FFFFFF00A5BF8C0079A84D004B9E020084CEEE00579B
      BD0084CEEE00F4B62E00579EC200000000000000000000000000AFAF9D00FFFF
      FF00FEFEFE00FDFDFC00FDFDFB00BBBBBB0077777700FAFAF600F8F8F400F7F7
      F200FBFBF500AFAF9D00000000000000000000000000000000004A4FAF00B1B3
      F000999CEC008B8FEA008B8FEA008B8FEA008B8FEA008B8FEA008B8FEA00999C
      EC00B1B3F0004A4FAF00000000000000000000000000000000005FA6CA0087D0
      EF007FCAE9007FCAE9007FCAE900BBBBBB00777777007FCAE90087D0EF005FA3
      C50087D0EF00FEC941005FA6CA000000000000000000000000005FA6CA004B9E
      0200FFFFFF00C6D7B700BBCFA900FFFFFF0083B05B004B9E020087D0EF005FA3
      C50087D0EF00FEC941005FA6CA00000000000000000000000000B1B1A000FFFF
      FE00FDFDFC00FDFDFB00BBBBBB0077777700FAFAF600F8F8F400F7F7F200F6F6
      F000FAFAF300B1B1A000000000000000000000000000000000004A4FAF00999C
      EC007C80E9006E74E7006E74E7006E74E7006E74E7006E74E7006E74E7007C80
      E900999CEC004A4FAF000000000000000000000000000000000062A9CD008AD3
      F00082CDEB0082CDEB00BBBBBB007777770082CDEB0082CDEB008AD3F00062A6
      C8008AD3F000E9E9DB0062A9CD0000000000000000000000000062A9CD004B9E
      020083B05B0083B05B0083B05B00FFFFFF00B0C79B004B9E02008AD3F00062A6
      C8008AD3F000E9E9DB0062A9CD00000000000000000000000000B4B4A400FEFE
      FD00FDFDFB00FCFCF900FBFBF800BBBBBB0077777700F7F7F200F6F6F000F5F5
      EE00FAFAF200B4B4A400000000000000000000000000000000004A4FAF008B8F
      EA006E74E7005F66E600656BE700EDEDFB00EDEDFB00656BE7005F66E6006E74
      E7008B8FEA004A4FAF000000000000000000000000000000000065ACCF008ED6
      F20087D0ED0087D0ED0087D0ED00BBBBBB007777770087D0ED008ED6F20066AA
      CC008ED6F200F0F0E60065ACCF0000000000000000000000000065ACCF004B9E
      02008BB863008BB863008BB86300C6D7B700FFFFFF004B9E02008ED6F20066AA
      CC008ED6F200F0F0E60065ACCF00000000000000000000000000B8B8A600FEFE
      FC00FCFCF900FBFBF800BBBBBB0077777700F7F7F200F6F6F000F5F5EE00F4F4
      EC00F9F9EF00B8B8A600000000000000000000000000000000004A4FAF008B8F
      EA006E74E700656BE700656BE700EDEDFB00EDEDFB00656BE700656BE7006E74
      E7008B8FEA004A4FAF000000000000000000000000000000000068AFD30092DA
      F4008BD4F0008BD4F000BBBBBB00777777008BD4F0008BD4F00092DAF40069AD
      CF0092DAF400F8F8F30068AFD30000000000000000000000000068AFD3004B9E
      02008BB863008BB863008BB863008BB86300D1DEC4004B9E020092DAF40069AD
      CF0092DAF400F8F8F30068AFD300000000000000000000000000BABAA900FDFD
      FB00FBFBF800FAFAF600F8F8F400BBBBBB0077777700F5F5EE00F4F4EC00F1F1
      E700F7F7EA00BABAA900000000000000000000000000000000004A4FAF008B8F
      EA006E74E700EDEDFB00EDEDFB00EDEDFB00EDEDFB00EDEDFB00EDEDFB006E74
      E7008B8FEA004A4FAF00000000000000000000000000000000006BB2D50097DE
      F60090D8F20090D8F20090D8F200BBBBBB007777770090D8F20097DEF60078BD
      DC0078BDDC00FEFEFD006BB2D5000000000000000000000000006BB2D5004B9E
      02004B9E02004B9E02004B9E02004B9E02004B9E02004B9E020097DEF60078BD
      DC0078BDDC00FEFEFD006BB2D500000000000000000000000000BDBDAC00FDFD
      FA00FAFAF600F8F8F400BBBBBB007777770099999900F4F4EC00F1F1E700ECEC
      DF00F4F4E500BDBDAC00000000000000000000000000000000004A4FAF00C3C4
      F300989BEC00EDEDFB00EDEDFB00EDEDFB00EDEDFB00EDEDFB00EDEDFB00989B
      EC00C3C4F3004A4FAF00000000000000000000000000000000006EB5D8009BE1
      F70094DBF40094DBF400BBBBBB00777777009999990094DBF40094DBF4009EE4
      F8007BC0DE006EB5D800CCE5F1000000000000000000000000006EB5D8009BE1
      F70094DBF40094DBF400BBBBBB00777777009999990094DBF40094DBF4009EE4
      F8007BC0DE006EB5D800CCE5F100000000000000000000000000C0C0AF00FCFC
      F800F8F8F400F7F7F20099999900E5E5D40077777700F1F1E700ECECDF00E8E8
      D900F3F3E200C0C0AF00000000000000000000000000000000004A4FAF00CFD1
      F500AFB1EF009DA0ED009DA0ED00EDEDFB00EDEDFB009DA0ED009DA0ED00AFB1
      EF00CFD1F5004A4FAF000000000000000000000000000000000071B7DA009EE5
      F90098DFF60098DFF6009999990076CFF5007777770098DFF60098DFF60098DF
      F600A1E7FA0071B7DA000000000000000000000000000000000071B7DA009EE5
      F90098DFF60098DFF6009999990076CFF5007777770098DFF60098DFF60098DF
      F600A1E7FA0071B7DA0000000000000000000000000000000000C2C2B100FCFC
      F700F7F7F200F6F6F000BBBBBB009999990077777700ECECDF00E8E8D900E6E6
      D500F2F2E100C2C2B100000000000000000000000000000000004A4FAF00DEDE
      F800D5D6F600D0D1F500A9ABEE00EDEDFB00EDEDFB00A9ABEE00D0D1F500D5D6
      F600DEDEF8004A4FAF000000000000000000000000000000000074BADD00A3E8
      FB009DE3F9009DE3F900BBBBBB0099999900777777009DE3F9009DE3F9009DE3
      F900A3E8FB0074BADD000000000000000000000000000000000074BADD00A3E8
      FB009DE3F9009DE3F900BBBBBB0099999900777777009DE3F9009DE3F9009DE3
      F900A3E8FB0074BADD0000000000000000000000000000000000C4C4B300FBFB
      F600F6F6F000F5F5EE00BBBBBB00EEEEEE0077777700E8E8D900E6E6D500E5E5
      D400F2F2E100C4C4B300000000000000000000000000000000004A4FAF00EDED
      FB00E8E9FA00E6E7FA00CBCCF400B6B8F100B6B8F100CBCCF400E6E7FA00E8E9
      FA00EDEDFB004A4FAF000000000000000000000000000000000076BCDF00A6EB
      FC00A1E6FB00A1E6FB00BBBBBB00EEEEEE0077777700A1E6FB00A1E6FB00A1E6
      FB00A6EBFC0076BCDF000000000000000000000000000000000076BCDF00A6EB
      FC00A1E6FB00A1E6FB00BBBBBB00EEEEEE0077777700A1E6FB00A1E6FB00A1E6
      FB00A6EBFC0076BCDF0000000000000000000000000000000000C7C7B600FAFA
      F400F5F5EE00F4F4EC00BBBBBB00DDDDDD0077777700E6E6D500A4A49300A4A4
      9300A4A49300A6A69400000000000000000000000000000000004A4FAF00F9F9
      FE00F7F8FD00F6F7FD00F6F7FD00F6F7FD00F6F7FD00F6F7FD00F6F7FD00F7F8
      FD00F9F9FE004A4FAF000000000000000000000000000000000079BEE100A9EE
      FD00A4E9FC00A4E9FC00BBBBBB00DDDDDD0077777700A4E9FC00A4E9FC00A4E9
      FC00A9EEFD0079BEE1000000000000000000000000000000000079BEE100A9EE
      FD00A4E9FC00A4E9FC00BBBBBB00DDDDDD0077777700A4E9FC00A4E9FC00A4E9
      FC00A9EEFD0079BEE10000000000000000000000000000000000C8C8B800FAFA
      F300F4F4EC00F1F1E700BBBBBB00CCCCCC0077777700E5E5D400B6B6A500FFFF
      FF00C8C8B80000000000000000000000000000000000000000004A4FAF004A4F
      AF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4FAF004A4F
      AF004A4FAF004A4FAF00000000000000000000000000000000007BC0E300ACF1
      FF00A7ECFE00A7ECFE00BBBBBB00CCCCCC0077777700A7ECFE00A7ECFE00A7EC
      FE00ACF1FF007BC0E300000000000000000000000000000000007BC0E300ACF1
      FF00A7ECFE00A7ECFE00BBBBBB00CCCCCC0077777700A7ECFE00A7ECFE00A7EC
      FE00ACF1FF007BC0E30000000000000000000000000000000000CACAB900FCFC
      F500F9F9EF00F6F6EA0099999900BBBBBB0099999900F2F2E100C2C2B100CACA
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007DC1E300B1F5
      FF00AEF2FF00AEF2FF0099999900BBBBBB0099999900AEF2FF00AEF2FF00AEF2
      FF00B1F5FF007DC1E300000000000000000000000000000000007DC1E300B1F5
      FF00AEF2FF00AEF2FF0099999900BBBBBB0099999900AEF2FF00AEF2FF00AEF2
      FF00B1F5FF007DC1E30000000000000000000000000000000000D8D8CB00CBCB
      BB00CBCBBB00CBCBBB00BFBFB20099999900BFBFB200CBCBBB00CBCBBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009ED1EB007EC2
      E5007EC2E5007EC2E50085B5CE009999990085B5CE007EC2E5007EC2E5007EC2
      E5007EC2E5009ED1EB00000000000000000000000000000000009ED1EB007EC2
      E5007EC2E5007EC2E50085B5CE009999990085B5CE007EC2E5007EC2E5007EC2
      E5007EC2E5009ED1EB000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C003000000000000C001000000000000
      C001000000000000C001000000000000C000000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C0030000000000008001FFFFC003C003C003C003C001C001
      C003C003C001C001C003C003C001C001C003C003C001C001C003C003C001C001
      C003C003C001C001C003C003C001C001C003C003C001C001C003C003C003C003
      C003C003C003C003C003C003C003C003C003C003C003C003C007C003C003C003
      C00FFFFFC003C003C01FFFFFC003C00300000000000000000000000000000000
      000000000000}
  end
  object OpenDialogZIP: TOpenDialog
    Filter = 'Fichero comprimidos (*.ZIP)|*.zip'
    Title = 'Nombre del fichero ZIP'
    Left = 480
    Top = 128
  end
end
