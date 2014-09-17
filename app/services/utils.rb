module Utils

  def self.remover_acentos(texto)
    return texto if texto.blank?
    texto = texto.gsub(/(á|à|ã|â|ä)/, 'a').gsub(/(é|è|ê|ë)/, 'e').gsub(/(í|ì|î|ï)/, 'i').gsub(/(ó|ò|õ|ô|ö)/, 'o').gsub(/(ú|ù|û|ü)/, 'u')
    texto = texto.gsub(/(Á|À|Ã|Â|Ä)/, 'A').gsub(/(É|È|Ê|Ë)/, 'E').gsub(/(Í|Ì|Î|Ï)/, 'I').gsub(/(Ó|Ò|Õ|Ô|Ö)/, 'O').gsub(/(Ú|Ù|Û|Ü)/, 'U')
    texto = texto.gsub(/·/, ' ')
    texto = texto.gsub(/ñ/, 'n').gsub(/Ñ/, 'N')
    texto = texto.gsub(/ç/, 'c').gsub(/Ç/, 'C')
    texto
  end

  def self.descricao_wiki(nome_item)

  	require 'rubygems'
		require 'nokogiri'
		require 'open-uri'
		require 'uri'

		begin 

			texto = String.new
			nome_item = nome_item.split.map{ |x| x.capitalize }.join('_')
			nome_item = Utils::remover_acentos(nome_item)
			page = Nokogiri::HTML(open("http://pt.wikipedia.org/wiki/" + nome_item ))

			if page.css('div#mw-content-text p')[0]
				info = page.css('div#mw-content-text p')[0].text
				texto += info
			end

			unless texto.include? "podem referir-se a" and !texto.include? "pode se referir a:" and !texto.include? "pode referir-se a" ##
					#Truncar em 4k caracteres
					return texto[0..4900] 
			end
		rescue OpenURI::HTTPError => e
			nil
		end
  end
  
end