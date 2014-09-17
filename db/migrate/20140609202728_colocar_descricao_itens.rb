class ColocarDescricaoItens < ActiveRecord::Migration
  def change
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	require 'uri'

		itens = Item.all.take 1
		itens.each do |item| 
		i = 0
			begin 

 			  puts i
 			  if item.descricao.nil?
					texto = String.new
					product = String.new

					product = item.nome_ptbr.split.map{ |x| x.capitalize }.join('_')

					product = remover_acentos(product)

					page = Nokogiri::HTML(open("http://pt.wikipedia.org/wiki/" + product ))

					url = "http://pt.wikipedia.org/wiki/" + product

					for i in (0..1)
						if page.css('div#mw-content-text p')[i]

							info = page.css('div#mw-content-text p')[i].text

							texto += info

						end
					end

					unless texto.include? "podem referir-se a" and !texto.include? "pode se referir a:" and !texto.include? "pode referir-se a" ##
						if item.descricao.nil?
							#Truncar em 4k caracteres
							texto = texto[0..4900] 
							# Faz o update dos atributos
							item.update_attribute("descricao", texto)
							item.update_attribute("wiki_link", url)
						end
					end
			  end 

			  i += 1

			rescue OpenURI::HTTPError => e
				nil
			end
		end
	end

	def remover_acentos(texto)
    return texto if texto.blank?
    texto = texto.gsub(/(á|à|ã|â|ä)/, 'a').gsub(/(é|è|ê|ë)/, 'e').gsub(/(í|ì|î|ï)/, 'i').gsub(/(ó|ò|õ|ô|ö)/, 'o').gsub(/(ú|ù|û|ü)/, 'u')
    texto = texto.gsub(/(Á|À|Ã|Â|Ä)/, 'A').gsub(/(É|È|Ê|Ë)/, 'E').gsub(/(Í|Ì|Î|Ï)/, 'I').gsub(/(Ó|Ò|Õ|Ô|Ö)/, 'O').gsub(/(Ú|Ù|Û|Ü)/, 'U')
    texto = texto.gsub(/·/, ' ')
    texto = texto.gsub(/ñ/, 'n').gsub(/Ñ/, 'N')
    texto = texto.gsub(/ç/, 'c').gsub(/Ç/, 'C')
    texto
  end

end
