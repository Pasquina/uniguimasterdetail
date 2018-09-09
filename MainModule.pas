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

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
