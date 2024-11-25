unit unt_quadros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient;

type
  Tfrm_quadros_apoio = class(TForm)
    pnl_buscar: TPanel;
    Panel2: TPanel;
    bb_confirmar_buscar: TBitBtn;
    bb_cancelar_buscar: TBitBtn;
    dbg_buscar: TDBGrid;
    ds_buscar: TDataSource;
    cds_buscar: TClientDataSet;
    dsp_buscar: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_quadros_apoio: Tfrm_quadros_apoio;

implementation

{$R *.dfm}

end.
