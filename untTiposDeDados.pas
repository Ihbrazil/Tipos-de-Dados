unit untTiposDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTiposDeDados = class(TForm)
    btnCalculaAbono: TButton;
    lblAbono: TLabel;
    lblIcmsTotal: TLabel;
    lblIcmsSomaProdutos: TLabel;
    lblConfere: TLabel;
    lblLetras: TLabel;
    btnCalculaICMS: TButton;
    procedure btnCalculaAbonoClick(Sender: TObject);
    procedure btnCalculaICMSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposDeDados: TfrmTiposDeDados;

implementation

{$R *.dfm}

procedure TfrmTiposDeDados.btnCalculaAbonoClick(Sender: TObject);
var

  nome: string;
  idade: integer;
  salario, umPorCento, abono: double;

  begin

  nome := 'João Ferreira';
  idade := 38;
  salario := 5456.32;
  umPorCento := salario / 100;
  abono := UmPorCento * idade;

  lblAbono.Caption := FloatToStr(abono);

end;

procedure TfrmTiposDeDados.btnCalculaICMSClick(Sender: TObject);

var
  produto1, produto2, produto3, valorTotal: double;
  icmsTotal, icms1, icms2, icms3, icmsSomaProdutos: double;
  confere: boolean;
  l1, l2, l3: char;
  fim: string;

begin

  produto1:= 10.32;
  produto2:= 11.43;
  produto3:= 17.33;

  valorTotal := produto1 + produto2 + produto3;
  icmsTotal := valorTotal * 0.19;

  icms1 := produto1 * 0.19;
  icms2 := produto2 * 0.19;
  icms3 := produto3 * 0.19;

  icmsSomaProdutos := icms1 + icms2 + icms3;

  confere := icmsTotal = icmsSomaProdutos;
  l1 := char(65);
  l2 := char(66);
  l3 := char(67);
  fim := l1 + l2 + l3;


  lblIcmsTotal.Caption := FloatToStr(icmsTotal);
  lblIcmsSomaProdutos.Caption := FloatToStr(icmsSomaProdutos);
  lblConfere.Caption := BoolToStr(confere);
  lblLetras.Caption := fim;

end;

end.
