unit unitCadastroFuncionario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  DBCtrls, DBExtCtrls, unitCadastroPai;

type

  { TFormCadastroCadastroFuncionario }

  TFormCadastroCadastroFuncionario = class(TFormCadastroPai)
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEditBairro1: TDBEdit;
    DBEditCidade1: TDBEdit;
    DBEditCNPJ1: TDBEdit;
    DBEditEmail1: TDBEdit;
    DBEditId1: TDBEdit;
    DBEditNome1: TDBEdit;
    DBEditNumero1: TDBEdit;
    DBEditReferencia1: TDBEdit;
    DBEditRg1: TDBEdit;
    DBEditRua1: TDBEdit;
    DBEditTelefone1: TDBEdit;
    DBRadioGroupSexo1: TDBRadioGroup;
    GroupBox2: TGroupBox;
    RadioButtonFeminino1: TRadioButton;
    RadioButtonMasculino1: TRadioButton;
    RadioButtonOutros1: TRadioButton;
    StaticText1: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  FormCadastroCadastroFuncionario: TFormCadastroCadastroFuncionario;

implementation

{$R *.lfm}

{ TFormCadastroCadastroFuncionario }

procedure TFormCadastroCadastroFuncionario.PageControl1Change(Sender: TObject);
begin

end;

end.

