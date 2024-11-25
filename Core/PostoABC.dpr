program PostoABC;

uses
  Vcl.Forms,
  unt_principal in 'View\unt_principal.pas' {frmPrincipal},
  Utils in 'Utils.pas',
  Model.Abastecimento in 'Model\Model.Abastecimento.pas',
  Model.Bomba in 'Model\Model.Bomba.pas',
  Controller.Abastecimento in 'Controller\Controller.Abastecimento.pas',
  Controller.Bomba in 'Controller\Controller.Bomba.pas',
  DAO.Abastecimento in 'DAO\DAO.Abastecimento.pas',
  DAO.Bomba in 'DAO\DAO.Bomba.pas',
  DAO.ConexaoFiredac in 'DAO\Conexao\DAO.ConexaoFiredac.pas',
  Model.Tanque in 'Model\Model.Tanque.pas',
  Model.Configuracao in 'Model\Model.Configuracao.pas',
  DAO.Tanque in 'DAO\DAO.Tanque.pas',
  Controller.Tanque in 'Controller\Controller.Tanque.pas',
  DAO.Configuracao in 'DAO\DAO.Configuracao.pas',
  Controller.Configuracao in 'Controller\Controller.Configuracao.pas',
  Vcl.Themes,
  Vcl.Styles,
  Controller.Factory in 'Controller\Controller.Factory.pas',
  Controller.Interfaces.Factory in 'Controller\Controller.Interfaces.Factory.pas',
  unt_quadros in 'View\unt_quadros.pas' {frm_quadros_apoio},
  unt_relatorios in 'View\unt_relatorios.pas' {frmRelatorios},
  Controller.Relatorios in 'Controller\Controller.Relatorios.pas',
  DAO.Relatorios in 'DAO\DAO.Relatorios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tfrm_quadros_apoio, frm_quadros_apoio);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.Run;
end.
