class ContatoMailer < ActionMailer::Base
  default from: "contato.suggestme@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contato_mailer.contato.subject
  #
  def contato(email, mensagem)
  	@email = email
  	@mensagem = mensagem
    mail(to: @email, subject: "Contato do Usuário " + @email)
  end
end
