unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TUniMainModule = class(TUniGUIMainModule)
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    FDMemTable3: TFDMemTable;
    FDMemTable1MasterKey: TSingleField;
    FDMemTable1MasterDescription: TStringField;
    DataSource1: TDataSource;
    FDMemTable2DetailAMasterKey: TSingleField;
    FDMemTable2DetailAKey: TSingleField;
    FDMemTable2DetailADescription: TStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SaveData;
    procedure LoadData;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

{ TUniMainModule }

procedure TUniMainModule.LoadData;
begin
  FDMemTable1.LoadFromFile('../../uniMaster.xml');
  FDMemTable2.LoadFromFile('../../uniDetailA.xml');
  FDMemTable3.LoadFromFile('../../uniDetailB.xml');
  FDMemTable1.Refresh;
end;

procedure TUniMainModule.SaveData;
begin
  FDMemTable1.SaveToFile('../../uniMaster.xml');
  FDMemTable2.SaveToFile('../../uniDetailA.xml');
  FDMemTable3.SaveToFile('../../uniDetailB.xml');
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
