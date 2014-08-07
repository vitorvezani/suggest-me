class ContatoMailer < ActionMailer::Base
  default from: "contato.suggestme@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contato_mailer.contato.subject
  #
  def contato(email, msg)
  	@email = email
  	@msg = msg
    mail to: "contato.suggestme@gmail.com", subject: "Contato do usuario " + @email
  end
end
