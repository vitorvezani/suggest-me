== README

#################################
# 		Software & Hardware 	#
#################################

MacOSX 						- Version 10.9.4
Sublime Text 3 		- Build 3065
OmniGraffle 			- Version 5.4.2
Git 							- Version 1.9.3
MySQL 						- Version 5.6.17
Ruby On Rails 		- Version 4.1.0 (necessário)
Ruby 							- Version 2.0.0p451 (necessário)
SourceTree 				- Version 2.0.0
FortFile 					- Version 1.2.5

########################################
#		Instalação e configuração      #
########################################

Uma vez que nem todos possuem MacOSX, foi inserido o tutorial para executar no Ubuntu

# INSTALANDO RUBY #

* Abra o terminal
* O primeiro passo é instalar algumas dependências para Ruby.

	sudo apt-get update
 	sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

* Em seguida vamos instalar o Ruby. A maioria das pessoas preferem usar rbenv estes dias. Instalando com rbenv é um simples processo de duas etapas. Primeiro você instala rbenv, e depois ruby-build:

	cd
	git clone git://github.com/sstephenson/rbenv.git .rbenv
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
	echo 'eval "$(rbenv init -)"' >> ~/.bashrc
	exec $SHELL

	git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
	echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
	exec $SHELL

	rbenv install 2.0.0-p576
	rbenv global 2.0.0-p576
	ruby -v

O último passo é contar para o Rubygems não instalar a documentação de cada pacote localmente e, em seguida, instalar Bundler

	echo "gem: --no-ri --no-rdoc" > ~/.gemrc
	gem install bundler
	rbenv rehash

Uma última coisa que precisamos fazer é instalar um runtime Javascript para o Rails asset pipeline para compilar com. Nós vamos usar NodeJS para isso. Para instalar o NodeJS, vamos adicioná-lo usando um repositório PPA:

	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs

E isso é tudo o que precisamos para instalar por agora

# INSTALANDO RAILS #

	gem install rails
	rbenv rehash
	rails -v

# INSTALANDO MYSQL #

	sudo apt-get install mysql-server mysql-client libmysqlclient-dev

# CONFIRMANDO A INSTALAÇÃO #

	rails new myapp -d mysql
	cd myapp
	rake db:create
	rails server

Agora você pode visitar http://localhost:3000 para ver se tudo funcionou!

Para mais informações:

	https://gorails.com/setup/ubuntu/14.04 (Acessado em 07/11/2014)

###################################
# 	Inicializando o Suggest Me    #
###################################

* Abra o terminal

	mysql -u root -h localhost -p
	create database suggest_me_development
	cd path\to\suggestme
	rake db:migrate
	rake db:seed

* Excluir a pasta /solr

	bundle exec rake sunspot:solr:reindex
	bundle exec rake sunspot:solr:start

rails s

##################################
# 			MySQL Commands		 #
##################################

mysql -u root -h localhost -p 					// Login
create database suggest_me_development 			// Criar a base
show databases; 								// Mostrar as bases
use suggest_me_development; 					// Usar as bases
show tables; 									// Mostrar as Tabelas

// Arquivos de configuração
Ubuntu database file: 
	
	/var/lib/mysql/mysql.sock

MacOS database file: 

	/tmp/mysql.sock

#################################
#      		SUNSPOT SOLR        #
#################################

* Ligar MySql
* Excluir a pasta /solr

	bundle exec rake sunspot:solr:reindex
	bundle exec rake sunspot:solr:start
	bundle exec rake sunspot:solr:stop

###################################
# 	Testes Automáticos - RSPECT   #
###################################

Executar a suite de testes:

	bin/rake db:migrate RAILS_ENV=test
	bundle exec rspec spec/requests/

#############################
# 			 DEBUG 	     	#
#############################

Inserir no HTML aonde deseja aparecer o parametros de debug: 
	<%= debug(params) if Rails.env.development? %>
