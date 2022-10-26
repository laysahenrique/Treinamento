unit unitCrediario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  ExtCtrls, unitCadastroPai, DBDateTimePicker;

type

  { TFormCadastroCrediario }

  TFormCadastroCrediario = class(TFormCadastroPai)
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
  private

  public

  end;

var
  FormCadastroCrediario: TFormCadastroCrediario;

implementation

{$R *.lfm}

end.

