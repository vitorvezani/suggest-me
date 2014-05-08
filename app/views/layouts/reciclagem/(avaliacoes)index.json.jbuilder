json.array!(@avaliacoes) do |avaliacao|
  json.extract! avaliacao, :id
  json.url avaliacao_url(avaliacao, format: :json)
end
