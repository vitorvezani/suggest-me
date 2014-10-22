class UserMailer < ActionMailer::Base
  default from: "contato.suggestme@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contato_mailer.contato.subject
  #
  def registration_confirmation(usuario)
    @usuario = usuario
    mail(to: usuario.email, subject: "Confirmação de Registro")
  end

  def reset_password(usuario, nova_senha)
    @usuario = usuario
    @nova_senha = nova_senha
    mail(to: usuario.email, subject: "Redefinição de Senha")
  end
end
