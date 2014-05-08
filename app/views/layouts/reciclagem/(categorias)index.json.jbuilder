json.array!(@categorias) do |categoria|
  json.extract! categoria, :id
  json.url categoria_url(categoria, format: :json)
end
