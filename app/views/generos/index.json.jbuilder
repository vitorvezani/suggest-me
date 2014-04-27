json.array!(@generos) do |genero|
  json.extract! genero, :id
  json.url genero_url(genero, format: :json)
end
