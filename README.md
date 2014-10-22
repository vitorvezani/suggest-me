== README

################################
# Software & Hardware Versions #
################################

MacOSX - Version 10.9.4
Sublime Text 3 - Build 3065
OmniGraffle Profressional - Version 5.4.2
Git - Version 1.9.3 (Apple Git-50)
MySQL - Version 5.6.17
Ruby On Rails - Version 4.1.0
Ruby - Version 2.0.0p451
SourceTree - Version 2.0.0
FortFile - Version XXX

####################################
# Installing Ruby On Rails & MySql #
####################################

https://gorails.com/setup/ubuntu/14.04

##################
# Mysql Commands #
##################

mysql -u root -h localhost -p 			// Login

create database suggest_me_development 	// Criar a base

show databases; 						// Mostrar as bases

use suggest_me_development; 			// Usar as bases

show tables; 							// Mostrar as Tabelas

Ubuntu database file: /var/lib/mysql/mysql.sock
MacOS database file: /tmp/mysql.sock

#########################
#      SUNSPOT SOLR     #
#########################

- Ligar MySql
- Excluir a pasta /solr
- bundle exec rake sunspot:solr:reindex
- bundle exec rake sunspot:solr:start

#########
# RSPECT #
#########

Executar a suite de testes:
- bundle exec rspec spec/requests/

#########
# DEBUG #
#########

<%= debug(params) if Rails.env.development? %>


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
