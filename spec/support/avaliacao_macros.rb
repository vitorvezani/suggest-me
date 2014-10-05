module AvaliacaoMacros
  def create_avaliacao(usuario, item, tipo_avaliacao)
    Avaliacao.create(usuario: usuario, item: item,avaliacao: tipo_avaliacao)
  end
end