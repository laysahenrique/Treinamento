unit unitCadastroFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBExtCtrls, unitCadastroPai, PQConnection, SQLDB, DBDateTimePicker, DB;

type

  { TFormCadastroFornecedor }

  TFormCadastroFornecedor = class(TFormCadastroPai)
    DBDateTimePicker1: TDBDateTimePicker;
    DBEditRua: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditNumero: TDBEdit;
    DBEditReferencia: TDBEdit;
    DBEditId: TDBEdit;
    DBEditNome: TDBEdit;
    DBEditRg: TDBEdit;
    DBEditCNPJ: TDBEdit;
    DBEditEmail: TDBEdit;
    DBEditTelefone: TDBEdit;
    DBRadioGroupSexo: TDBRadioGroup;
    GroupBox1: TGroupBox;
    RadioButtonFeminino: TRadioButton;
    RadioButtonMasculino: TRadioButton;
    RadioButtonOutros: TRadioButton;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
  private

  public

  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

{$R *.lfm}

{ TFormCadastroFornecedor }



end.

