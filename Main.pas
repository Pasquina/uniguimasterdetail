unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniDBNavigator, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, uniLabel, uniButton;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniDBNavigator2: TUniDBNavigator;
    UniDBNavigator3: TUniDBNavigator;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniMainModule.SaveData;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniMainModule.LoadData;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
