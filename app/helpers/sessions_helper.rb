module SessionsHelper

	# 1 - cria um novo token 
	# 2 - coloca o token no cookie (browser do usuário) 
	# 3 - Salva o hash do token na base;
	# 4 - Seta o current_user, variavel da instancia com o usuário
  def sign_in(user)
    remember_token = Usuario.novo_remember_token
    cookies[:remember_token] = { value: remember_token, expires: 20.years.from_now.localtime }
    user.update_attribute(:remember_token, Usuario.digest(remember_token))
    self.current_user = user
  end

  # Seta o current_user
  def current_user=(user)
    @current_user = user
  end

  # Retorna o current_user, mas primeiro da hash no cookie e procura o usuario
  def current_user
    remember_token = Usuario.digest(cookies[:remember_token])
    @current_user ||= Usuario.find_by(remember_token: remember_token)
  end

  def sign_out
    # Isto ser para quando o cookie foi roubado, então mudamos para um random na base
    current_user.update_attribute(:remember_token, Usuario.digest(Usuario.novo_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def signed_in?
    !current_user.nil?
  end

  def is_admin?
    self.current_user.try(:admin?)
  end

  # Se o usuário não está logado, redireciona para o login
  def usuario_logado?
    unless signed_in?
      flash[:warning] = "Por favor Sign in."
      redirect_to signin_url
    end
  end

end
