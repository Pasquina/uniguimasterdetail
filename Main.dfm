object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 529
  ClientWidth = 837
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'vbox'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 24
    Top = 8
    Width = 753
    Height = 265
    Hint = ''
    TabOrder = 0
    Caption = ''
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'vbox'
    LayoutConfig.Flex = 1
    LayoutConfig.Width = '100%'
    object UniContainerPanel1: TUniContainerPanel
      Left = 24
      Top = 3
      Width = 481
      Height = 38
      Hint = ''
      ParentColor = False
      TabOrder = 1
      Layout = 'hbox'
      LayoutAttribs.Align = 'middle'
      LayoutAttribs.Pack = 'start'
      LayoutAttribs.Padding = '3'
      LayoutConfig.Width = '100%'
      object UniLabel1: TUniLabel
        Left = 24
        Top = 3
        Width = 65
        Height = 23
        Hint = ''
        Caption = 'Master'
        ParentFont = False
        Font.Height = -19
        Font.Style = [fsBold]
        TabOrder = 2
        LayoutConfig.Margin = '0 10'
      end
      object UniDBNavigator1: TUniDBNavigator
        Left = 168
        Top = 3
        Width = 241
        Height = 25
        Hint = ''
        DataSource = UniMainModule.DataSource1
        TabOrder = 1
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 24
      Top = 56
      Width = 713
      Height = 206
      Hint = ''
      DataSource = UniMainModule.DataSource1
      LoadMask.Message = 'Loading data...'
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '100%'
      TabOrder = 2
      Columns = <
        item
          FieldName = 'MasterKey'
          Title.Caption = 'MasterKey'
          Width = 90
        end
        item
          FieldName = 'MasterDescription'
          Title.Caption = 'MasterDescription'
          Width = 124
        end>
    end
  end
  object UniPanel2: TUniPanel
    Left = 24
    Top = 312
    Width = 793
    Height = 169
    Hint = ''
    TabOrder = 1
    Caption = ''
    Layout = 'hbox'
    LayoutConfig.Flex = 1
    LayoutConfig.Width = '100%'
    object UniContainerPanel3: TUniContainerPanel
      Left = 3
      Top = 3
      Width = 350
      Height = 149
      Hint = ''
      ParentColor = False
      TabOrder = 1
      Layout = 'vbox'
      LayoutConfig.Flex = 1
      LayoutConfig.Height = '100%'
      object UniContainerPanel5: TUniContainerPanel
        Left = 3
        Top = 3
        Width = 344
        Height = 38
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'start'
        LayoutAttribs.Padding = '3'
        LayoutConfig.Width = '100%'
        object UniLabel2: TUniLabel
          Left = 29
          Top = 3
          Width = 75
          Height = 23
          Hint = ''
          Caption = 'Detail A'
          ParentFont = False
          Font.Height = -19
          Font.Style = [fsBold]
          TabOrder = 2
          LayoutConfig.Margin = '0 10'
        end
        object UniDBNavigator2: TUniDBNavigator
          Left = 100
          Top = 3
          Width = 241
          Height = 25
          Hint = ''
          DataSource = UniMainModule.DataSource2
          TabOrder = 1
        end
      end
      object UniDBGrid2: TUniDBGrid
        Left = 19
        Top = 47
        Width = 318
        Height = 90
        Hint = ''
        DataSource = UniMainModule.DataSource2
        LoadMask.Message = 'Loading data...'
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '100%'
        TabOrder = 2
        Columns = <
          item
            FieldName = 'DetailAMasterKey'
            Title.Caption = 'DetailAMasterKey'
            Width = 105
          end
          item
            FieldName = 'DetailAKey'
            Title.Caption = 'DetailAKey'
            Width = 90
          end
          item
            FieldName = 'DetailADescription'
            Title.Caption = 'DetailADescription'
            Width = 124
          end>
      end
    end
    object UniContainerPanel4: TUniContainerPanel
      Left = 376
      Top = 3
      Width = 409
      Height = 150
      Hint = ''
      ParentColor = False
      TabOrder = 2
      Layout = 'vbox'
      LayoutConfig.Flex = 1
      LayoutConfig.Height = '100%'
      object UniContainerPanel6: TUniContainerPanel
        Left = 3
        Top = 3
        Width = 390
        Height = 38
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'start'
        LayoutAttribs.Padding = '3'
        LayoutConfig.Width = '100%'
        object UniLabel3: TUniLabel
          Left = 3
          Top = 3
          Width = 75
          Height = 23
          Hint = ''
          Caption = 'Detail B'
          ParentFont = False
          Font.Height = -19
          Font.Style = [fsBold]
          TabOrder = 2
          LayoutConfig.Margin = '0 10'
        end
        object UniDBNavigator3: TUniDBNavigator
          Left = 99
          Top = 3
          Width = 241
          Height = 25
          Hint = ''
          DataSource = UniMainModule.DataSource3
          TabOrder = 1
        end
      end
      object UniDBGrid3: TUniDBGrid
        Left = 3
        Top = 47
        Width = 395
        Height = 90
        Hint = ''
        DataSource = UniMainModule.DataSource3
        LoadMask.Message = 'Loading data...'
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '100%'
        TabOrder = 2
        Columns = <
          item
            FieldName = 'DetailBMasterKey'
            Title.Caption = 'DetailBMasterKey'
            Width = 105
          end
          item
            FieldName = 'DetailBKey'
            Title.Caption = 'DetailBKey'
            Width = 90
          end
          item
            FieldName = 'DetailBDescription'
            Title.Caption = 'DetailBDescription'
            Width = 124
          end>
      end
    end
  end
end
