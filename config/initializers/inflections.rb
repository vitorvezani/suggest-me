# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

# Para Plurarizacao correta
 ActiveSupport::Inflector.inflections do |inflect|
   inflect.irregular 'avaliacao', 'avaliacoes'
   inflect.irregular 'erro proibiu', 'erros proibiram'
   inflect.irregular 'ocupacao', 'ocupacoes'
   inflect.irregular 'usuario', 'usuarios'
   inflect.irregular 'comentario', 'comentarios'
   inflect.irregular 'genero_item', 'generos_itens'
   inflect.irregular 'item', 'itens'
   inflect.irregular 'genero', 'generos'
   inflect.irregular 'categoria', 'categorias'
   inflect.irregular 'generalizacao', 'generalizacoes'
 end