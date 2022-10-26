unit unitCadastroCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, DBCtrls, DBExtCtrls, unitCadastroPai;

type

  { TFormCadastroCliente }

  TFormCadastroCliente = class(TFormCadastroPai)
    DBEditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditCNPJ1: TDBEdit;
    DBEditEmail1: TDBEdit;
    DBEditId: TDBEdit;
    DBEditNome1: TDBEdit;
    DBEditNumero: TDBEdit;
    DBEditReferencia: TDBEdit;
    DBEditRua: TDBEdit;
    DBEditTelefone1: TDBEdit;
    DBRadioGroupSexo1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    RadioButtonFeminino1: TRadioButton;
    RadioButtonMasculino1: TRadioButton;
    RadioButtonOutros1: TRadioButton;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    procedure DBEditIdChange(Sender: TObject);
  private

  public

  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.lfm}

{ TFormCadastroCliente }

procedure TFormCadastroCliente.DBEditIdChange(Sender: TObject);
begin

end;

end.

