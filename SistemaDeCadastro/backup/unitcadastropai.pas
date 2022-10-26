unit unitCadastroPai;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, PQConnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBGrids, DBCtrls, Menus;

type

  { TFormCadastroPai }

  TFormCadastroPai = class(TForm)
    ButtonExcluir: TButton;
    ButtonInserir: TButton;
    ButtonAlterar: TButton;
    ButtonCancelar: TButton;
    ButtonSalvar: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    Panel1: TPanel;
    PQConnection1: TPQConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheetListaCadastro: TTabSheet;
    TabSheetCadastrar: TTabSheet;
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLQuery1AfterDelete(DataSet: TDataSet);
    procedure SQLQuery1AfterPost(DataSet: TDataSet);
  private

  public

  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.lfm}

{ TFormCadastroPai }


procedure TFormCadastroPai.SQLQuery1AfterPost(DataSet: TDataSet);
begin
   SQLQuery1.ApplyUpdates;
   SQLTransaction1.CommitRetaining;
   SQLQuery1.Refresh;
end;

procedure TFormCadastroPai.SQLQuery1AfterDelete(DataSet: TDataSet);
begin
   SQLQuery1.ApplyUpdates;
   SQLTransaction1.CommitRetaining;
   SQLQuery1.Refresh;
end;

procedure TFormCadastroPai.ButtonAlterarClick(Sender: TObject);
begin
    SQLQuery1.Edit;
    PageControl1.ActivePage:= TabSheetCadastrar;
end;

procedure TFormCadastroPai.ButtonExcluirClick(Sender: TObject);
begin
  SQLQuery1.Delete;
end;

procedure TFormCadastroPai.ButtonInserirClick(Sender: TObject);
begin
   SQLQuery1.Append;
   PageControl1.ActivePage:= TabSheetCadastrar;
end;

procedure TFormCadastroPai.ButtonSalvarClick(Sender: TObject);
begin
  SQLQuery1.Post;
  PageControl1.ActivePage:= TabSheetListaCadastro;
end;

procedure TFormCadastroPai.FormCreate(Sender: TObject);
begin
  SQLQuery1.Refresh;
end;

procedure TFormCadastroPai.ButtonCancelarClick(Sender: TObject);
begin
    SQLQuery1.Cancel;
    PageControl1.ActivePage:= TabSheetListaCadastro;
end;
end.

