# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Generos
	# Filmes
	    Genero.create nome: 'Ação'
	    Genero.create nome: 'Aventura'
	    Genero.create nome: 'Comédia'
	    Genero.create nome: 'Crime/Gangster'
	    Genero.create nome: 'Drama'
	    Genero.create nome: 'Épico/Historico'
	    Genero.create nome: 'Horror'
	    Genero.create nome: 'Musicals/Dance'
	    Genero.create nome: 'Ficção cientifica'
	    Genero.create nome: 'Guerra'
	    Genero.create nome: 'Faroeste'
	# Musicas
	# Internacionais
	    Genero.create nome: 'Africano'
	    Genero.create nome: 'Asiatico'
	    Genero.create nome: 'J-pop'
	    Genero.create nome: 'Blues'
	    Genero.create nome: 'Jazz'
	    Genero.create nome: 'Country'
	    Genero.create nome: 'Eletronico'
	    Genero.create nome: 'Folk'
	    Genero.create nome: 'HipHop'
	    Genero.create nome: 'Pop'
	    Genero.create nome: 'Rock'
	# Nacionais
	    Genero.create nome: 'Axé'
	    Genero.create nome: 'Bossa Nova'
	    Genero.create nome: 'Forró'
	    Genero.create nome: 'MPB'
	    Genero.create nome: 'Sertanejo'
	    Genero.create nome: 'Pagode'
	    Genero.create nome: 'Samba'
	# Jogos
	    Genero.create nome: 'Plataforma'
	    Genero.create nome: 'Luta'
	    Genero.create nome: 'Shooter'
	    Genero.create nome: 'Arcade'
	    Genero.create nome: 'Corrida'
	    Genero.create nome: 'Stealth'
	    Genero.create nome: 'RPG'
	    Genero.create nome: 'Estratégia'
	    Genero.create nome: 'Esporte'
	    Genero.create nome: 'Adulto'
	# Livros
	    Genero.create nome: 'Romance'
	    Genero.create nome: 'História/Bibliografia'
	    Genero.create nome: 'Religião'
	    Genero.create nome: 'Auto Ajuda'

	# Nacionais
	Item.create nome_ptbr: 'Los Hermanos', categoria_id: 3
	Item.create nome_ptbr: 'Legião Urbana', categoria_id: 3
	Item.create nome_ptbr: 'Avril Lavigne', categoria_id: 3
	Item.create nome_ptbr: 'Charlie Brown JR.', categoria_id: 3
	Item.create nome_ptbr: 'Engenheiros Do Hawaii', categoria_id: 3
	Item.create nome_ptbr: 'Chico Buarque', categoria_id: 3
	Item.create nome_ptbr: 'Pitty', categoria_id: 3
	Item.create nome_ptbr: 'Caetano Veloso', categoria_id: 3
	Item.create nome_ptbr: 'Clarice Falcão', categoria_id: 3
	Item.create nome_ptbr: 'Raimundos', categoria_id: 3
	Item.create nome_ptbr: 'Fresno', categoria_id: 3
	Item.create nome_ptbr: 'Cássia Eller', categoria_id: 3
	Item.create nome_ptbr: 'O Rappa', categoria_id: 3
	Item.create nome_ptbr: 'Skank', categoria_id: 3
	Item.create nome_ptbr: 'Cazuza', categoria_id: 3
	Item.create nome_ptbr: 'Capital Inicial', categoria_id: 3
	Item.create nome_ptbr: 'Nando Reis', categoria_id: 3
	Item.create nome_ptbr: 'Raul Seixas', categoria_id: 3
	Item.create nome_ptbr: 'Marisa Monte', categoria_id: 3
	Item.create nome_ptbr: 'Mallu Magalhães', categoria_id: 3
	Item.create nome_ptbr: 'Anitta', categoria_id: 3
	Item.create nome_ptbr: 'Apanhador Só', categoria_id: 3
	Item.create nome_ptbr: 'Marcelo Camelo', categoria_id: 3
	Item.create nome_ptbr: 'Titãs', categoria_id: 3
	Item.create nome_ptbr: 'Os Paralamas Do Sucesso', categoria_id: 3
	Item.create nome_ptbr: 'Banda Uó', categoria_id: 3
	Item.create nome_ptbr: 'Forfun', categoria_id: 3
	Item.create nome_ptbr: 'CPM 22', categoria_id: 3
	Item.create nome_ptbr: 'Vanessa da Mata', categoria_id: 3
	Item.create nome_ptbr: 'Kid Abelha', categoria_id: 3
	Item.create nome_ptbr: 'Emicida', categoria_id: 3
	Item.create nome_ptbr: 'Elis Regina', categoria_id: 3
	Item.create nome_ptbr: 'Racionais Mc', categoria_id: 3
	Item.create nome_ptbr: 'Ana Carolina', categoria_id: 3
	Item.create nome_ptbr: 'Jorge Ben', categoria_id: 3
	Item.create nome_ptbr: 'Rita Lee', categoria_id: 3		  
	Item.create nome_ptbr: 'A Banda Mais Bonita da Cidade', categoria_id: 3
	Item.create nome_ptbr: 'Detonautas Roque Clube', categoria_id: 3
	Item.create nome_ptbr: 'Zeca Baleiro', categoria_id: 3
	Item.create nome_ptbr: 'Barão Vermelho', categoria_id: 3
	Item.create nome_ptbr: 'Natiruts', categoria_id: 3
	Item.create nome_ptbr: 'Djavan', categoria_id: 3
	Item.create nome_ptbr: 'NX Zero', categoria_id: 3		  
	Item.create nome_ptbr: 'Marcelo D2', categoria_id: 3
  ##
  Item.create nome_ptbr: '2 Pac / Tupac', categoria_id: 3
  Item.create nome_ptbr: '3 Days Grace', categoria_id: 3
  Item.create nome_ptbr: 'A Day To Remember', categoria_id: 3
  Item.create nome_ptbr: 'A Great Big World', categoria_id: 3
  Item.create nome_ptbr: 'A.F.I.', categoria_id: 3
  Item.create nome_ptbr: 'Aaliyah', categoria_id: 3
  Item.create nome_ptbr: 'Abba', categoria_id: 3
  Item.create nome_ptbr: 'AC/DC', categoria_id: 3
  Item.create nome_ptbr: 'Adalita', categoria_id: 3
  Item.create nome_ptbr: 'Adele', categoria_id: 3
  Item.create nome_ptbr: 'AFI', categoria_id: 3
  Item.create nome_ptbr: 'Afrojack', categoria_id: 3
  Item.create nome_ptbr: 'After Earth', categoria_id: 3
  Item.create nome_ptbr: 'Agnes', categoria_id: 3
  Item.create nome_ptbr: 'Air', categoria_id: 3
  Item.create nome_ptbr: 'Airbourne', categoria_id: 3
  Item.create nome_ptbr: 'Akon', categoria_id: 3
  Item.create nome_ptbr: 'Alabama Shakes', categoria_id: 3
  Item.create nome_ptbr: 'Alkaline Trio', categoria_id: 3
  Item.create nome_ptbr: 'All Time Low', categoria_id: 3
  Item.create nome_ptbr: 'All-American Rejects', categoria_id: 3
  Item.create nome_ptbr: 'Allday', categoria_id: 3
  Item.create nome_ptbr: 'Aloe Blacc', categoria_id: 3
  Item.create nome_ptbr: 'Alphabeat', categoria_id: 3
  Item.create nome_ptbr: 'Alpine', categoria_id: 3
  Item.create nome_ptbr: 'Alt-J', categoria_id: 3
  Item.create nome_ptbr: 'Alter Bridge', categoria_id: 3
  Item.create nome_ptbr: 'Altiyan Childs', categoria_id: 3
  Item.create nome_ptbr: 'Amanda Bynes', categoria_id: 3
  Item.create nome_ptbr: 'American Authors', categoria_id: 3
  Item.create nome_ptbr: 'Amy Meredith', categoria_id: 3
  Item.create nome_ptbr: 'Andrew Stockdale', categoria_id: 3
  Item.create nome_ptbr: 'Apocalyptica', categoria_id: 3
  Item.create nome_ptbr: 'Aqua', categoria_id: 3
  Item.create nome_ptbr: 'Arcade Fire', categoria_id: 3
  Item.create nome_ptbr: 'Architects', categoria_id: 3
  Item.create nome_ptbr: 'Architecture In Helsinki', categoria_id: 3
  Item.create nome_ptbr: 'ARIA', categoria_id: 3
  Item.create nome_ptbr: 'Ariana Grande', categoria_id: 3
  Item.create nome_ptbr: 'Arrested Development', categoria_id: 3
  Item.create nome_ptbr: 'Asgeir', categoria_id: 3
  Item.create nome_ptbr: 'Ashanti', categoria_id: 3
  Item.create nome_ptbr: 'Asking Alexandria', categoria_id: 3
  Item.create nome_ptbr: 'At Sunset', categoria_id: 3
  Item.create nome_ptbr: 'Atoms For Peace', categoria_id: 3
  Item.create nome_ptbr: 'Audioslave', categoria_id: 3
  Item.create nome_ptbr: 'Augie March', categoria_id: 3
  Item.create nome_ptbr: 'Australia Day', categoria_id: 3
  Item.create nome_ptbr: 'Australia\'s Got Talent', categoria_id: 3
  Item.create nome_ptbr: 'Australian Crawl', categoria_id: 3
  Item.create nome_ptbr: 'Avalon Drive', categoria_id: 3
  Item.create nome_ptbr: 'Avenged Sevenfold', categoria_id: 3
  Item.create nome_ptbr: 'Avey Tare', categoria_id: 3
  Item.create nome_ptbr: 'Avicii', categoria_id: 3
  Item.create nome_ptbr: 'B.o.B', categoria_id: 3
  Item.create nome_ptbr: 'Baauer', categoria_id: 3
  Item.create nome_ptbr: 'Baby Animals', categoria_id: 3
  Item.create nome_ptbr: 'Baby Bash', categoria_id: 3
  Item.create nome_ptbr: 'Backstreet Boys', categoria_id: 3
  Item.create nome_ptbr: 'Bad Grandpa', categoria_id: 3
  Item.create nome_ptbr: 'Ball Park Music', categoria_id: 3
  Item.create nome_ptbr: 'Band Of Skulls', categoria_id: 3
  Item.create nome_ptbr: 'Baptized In Blood', categoria_id: 3
  Item.create nome_ptbr: 'Barbie Mariposa', categoria_id: 3
  Item.create nome_ptbr: 'Basement Birds', categoria_id: 3
  Item.create nome_ptbr: 'Basement Jaxx', categoria_id: 3
  Item.create nome_ptbr: 'Bastille', categoria_id: 3
  Item.create nome_ptbr: 'Beastie Boys', categoria_id: 3
  Item.create nome_ptbr: 'Beck', categoria_id: 3
  Item.create nome_ptbr: 'Bella Ferraro', categoria_id: 3
  Item.create nome_ptbr: 'Belle Roscoe', categoria_id: 3
  Item.create nome_ptbr: 'Ben Folds', categoria_id: 3
  Item.create nome_ptbr: 'Ben Folds Five', categoria_id: 3
  Item.create nome_ptbr: 'Ben Harper', categoria_id: 3
  Item.create nome_ptbr: 'Ben Harper & The Relentless 7', categoria_id: 3
  Item.create nome_ptbr: 'Ben Hazlewood', categoria_id: 3
  Item.create nome_ptbr: 'Ben Lee', categoria_id: 3
  Item.create nome_ptbr: 'Bernard Fanning', categoria_id: 3
  Item.create nome_ptbr: 'Bertie Blackman', categoria_id: 3
  Item.create nome_ptbr: 'Best Of Aussie Hip Hop - Volume 1', categoria_id: 3
  Item.create nome_ptbr: 'Bethel Music', categoria_id: 3
  Item.create nome_ptbr: 'Beyonce', categoria_id: 3
  Item.create nome_ptbr: 'Bic Runga', categoria_id: 3
  Item.create nome_ptbr: 'Biffy Clyro', categoria_id: 3
  Item.create nome_ptbr: 'Big Day Out', categoria_id: 3
  Item.create nome_ptbr: 'Big Scary', categoria_id: 3
  Item.create nome_ptbr: 'Birds of Tokyo', categoria_id: 3
  Item.create nome_ptbr: 'Birdy', categoria_id: 3
  Item.create nome_ptbr: 'Bjork', categoria_id: 3
  Item.create nome_ptbr: 'Black Eyed Peas', categoria_id: 3
  Item.create nome_ptbr: 'Black Label Society', categoria_id: 3
  Item.create nome_ptbr: 'Black Veil Brides', categoria_id: 3
  Item.create nome_ptbr: 'Blake Shelton', categoria_id: 3
  Item.create nome_ptbr: 'Bless the Fall', categoria_id: 3
  Item.create nome_ptbr: 'Blind Guardian', categoria_id: 3
  Item.create nome_ptbr: 'Blink 182', categoria_id: 3
  Item.create nome_ptbr: 'Bliss n Eso', categoria_id: 3
  Item.create nome_ptbr: 'Bloc Party', categoria_id: 3
  Item.create nome_ptbr: 'Bloodhound Gang', categoria_id: 3
  Item.create nome_ptbr: 'Blue', categoria_id: 3
  Item.create nome_ptbr: 'Blueprint', categoria_id: 3
  Item.create nome_ptbr: 'Blur', categoria_id: 3
  Item.create nome_ptbr: 'Boards of Canada', categoria_id: 3
  Item.create nome_ptbr: 'Bob Dylan', categoria_id: 3
  Item.create nome_ptbr: 'Bob Evans', categoria_id: 3
  Item.create nome_ptbr: 'Bob Sinclar', categoria_id: 3
  Item.create nome_ptbr: 'Bobby Brown', categoria_id: 3
  Item.create nome_ptbr: 'Bodyjar', categoria_id: 3
  Item.create nome_ptbr: 'Bodyrockers', categoria_id: 3
  Item.create nome_ptbr: 'Bon Jovi', categoria_id: 3
  Item.create nome_ptbr: 'Bow Wow', categoria_id: 3
  Item.create nome_ptbr: 'Boy & Bear', categoria_id: 3
  Item.create nome_ptbr: 'Boy In A Box', categoria_id: 3
  Item.create nome_ptbr: 'Boyce Avenue', categoria_id: 3
  Item.create nome_ptbr: 'Boyz II Men', categoria_id: 3
  Item.create nome_ptbr: 'Brad Paisley', categoria_id: 3
  Item.create nome_ptbr: 'Brandi Carlile', categoria_id: 3
  Item.create nome_ptbr: 'Brian May', categoria_id: 3
  Item.create nome_ptbr: 'Brian McFadden', categoria_id: 3
  Item.create nome_ptbr: 'Brielle Davis', categoria_id: 3
  Item.create nome_ptbr: 'Bright Eyes', categoria_id: 3
  Item.create nome_ptbr: 'Bring Me The Horizon', categoria_id: 3
  Item.create nome_ptbr: 'British India', categoria_id: 3
  Item.create nome_ptbr: 'Britney Spears', categoria_id: 3
  Item.create nome_ptbr: 'Brooke Fraser', categoria_id: 3
  Item.create nome_ptbr: 'Bruce Springsteen', categoria_id: 3
  Item.create nome_ptbr: 'Bruno Mars', categoria_id: 3
  Item.create nome_ptbr: 'Buffalo Tales', categoria_id: 3
  Item.create nome_ptbr: 'Buried In Verona', categoria_id: 3
  Item.create nome_ptbr: 'Busta Rhymes', categoria_id: 3
  Item.create nome_ptbr: 'Butterfingers', categoria_id: 3
  Item.create nome_ptbr: 'Caitlin Rose', categoria_id: 3
  Item.create nome_ptbr: 'Calling All Cars', categoria_id: 3
  Item.create nome_ptbr: 'Calvin Harris', categoria_id: 3
  Item.create nome_ptbr: 'Candice Alley', categoria_id: 3
  Item.create nome_ptbr: 'Cara Delevinge', categoria_id: 3
  Item.create nome_ptbr: 'Carly Rae Jepsen', categoria_id: 3
  Item.create nome_ptbr: 'Carney', categoria_id: 3
  Item.create nome_ptbr: 'Carolina Liar', categoria_id: 3
  Item.create nome_ptbr: 'Carrie Underwood', categoria_id: 3
  Item.create nome_ptbr: 'Carter Burwell', categoria_id: 3
  Item.create nome_ptbr: 'Cascada', categoria_id: 3
  Item.create nome_ptbr: 'Casey Donovan', categoria_id: 3
  Item.create nome_ptbr: 'Cassette Kids', categoria_id: 3
  Item.create nome_ptbr: 'Cassie', categoria_id: 3
  Item.create nome_ptbr: 'Cassie Davis', categoria_id: 3
  Item.create nome_ptbr: 'Cee Lo Green', categoria_id: 3
  Item.create nome_ptbr: 'Celia Pavey', categoria_id: 3
  Item.create nome_ptbr: 'Celine Dion', categoria_id: 3
  Item.create nome_ptbr: 'Chamillionaire', categoria_id: 3
  Item.create nome_ptbr: 'Charley Pride', categoria_id: 3
  Item.create nome_ptbr: 'Chase & Status', categoria_id: 3
  Item.create nome_ptbr: 'Chasing Bailey', categoria_id: 3
  Item.create nome_ptbr: 'Chemical Brothers', categoria_id: 3
  Item.create nome_ptbr: 'Cher', categoria_id: 3
  Item.create nome_ptbr: 'Cher Lloyd', categoria_id: 3
  Item.create nome_ptbr: 'Chet Faker', categoria_id: 3
  Item.create nome_ptbr: 'Chiddy Bang', categoria_id: 3
  Item.create nome_ptbr: 'Childish Gambino', categoria_id: 3
  Item.create nome_ptbr: 'Children Collide', categoria_id: 3
  Item.create nome_ptbr: 'Chingy', categoria_id: 3
  Item.create nome_ptbr: 'Chris Brown', categoria_id: 3
  Item.create nome_ptbr: 'Chris Cornell', categoria_id: 3
  Item.create nome_ptbr: 'Chris Isaak', categoria_id: 3
  Item.create nome_ptbr: 'Christina Aguilera', categoria_id: 3
  Item.create nome_ptbr: 'Christina Milian', categoria_id: 3
  Item.create nome_ptbr: 'Christina Parie', categoria_id: 3
  Item.create nome_ptbr: 'Christina Perri', categoria_id: 3
  Item.create nome_ptbr: 'CHVRCHES', categoria_id: 3
  Item.create nome_ptbr: 'Ciara', categoria_id: 3
  Item.create nome_ptbr: 'City And Colour', categoria_id: 3
  Item.create nome_ptbr: 'Clap Your Hands Say Yeah', categoria_id: 3
  Item.create nome_ptbr: 'Clare Bowditch', categoria_id: 3
  Item.create nome_ptbr: 'Cliff Richard', categoria_id: 3
  Item.create nome_ptbr: 'Cloud Control', categoria_id: 3
  Item.create nome_ptbr: 'Cobra Starship', categoria_id: 3
  Item.create nome_ptbr: 'Cody Simpson', categoria_id: 3
  Item.create nome_ptbr: 'Colbie Caillat', categoria_id: 3
  Item.create nome_ptbr: 'Cold Chisel', categoria_id: 3
  Item.create nome_ptbr: 'ComiCon Fans', categoria_id: 3
  Item.create nome_ptbr: 'Corinne Bailey Rae', categoria_id: 3
  Item.create nome_ptbr: 'Craig David', categoria_id: 3
  Item.create nome_ptbr: 'Crazy Frog', categoria_id: 3
  Item.create nome_ptbr: 'Creed', categoria_id: 3
  Item.create nome_ptbr: 'Cristian Alexanda', categoria_id: 3
  Item.create nome_ptbr: 'Crowded House', categoria_id: 3
  Item.create nome_ptbr: 'Cut Copy', categoria_id: 3
  Item.create nome_ptbr: 'Cute Is What We Aim For', categoria_id: 3
  Item.create nome_ptbr: 'Cyndi Lauper', categoria_id: 3
  Item.create nome_ptbr: 'Cypress Hill', categoria_id: 3
  Item.create nome_ptbr: 'D12', categoria_id: 3
  Item.create nome_ptbr: 'Daddy Yankee', categoria_id: 3
  Item.create nome_ptbr: 'Daft Punk', categoria_id: 3
  Item.create nome_ptbr: 'Dallas Crane', categoria_id: 3
  Item.create nome_ptbr: 'Damages: The Final Season', categoria_id: 3
  Item.create nome_ptbr: 'Dami Im', categoria_id: 3
  Item.create nome_ptbr: 'Damien Leith', categoria_id: 3
  Item.create nome_ptbr: 'Damon Albarn', categoria_id: 3
  Item.create nome_ptbr: 'Dan Sultan', categoria_id: 3
  Item.create nome_ptbr: 'Dane Rumble', categoria_id: 3
  Item.create nome_ptbr: 'Daniel Merriweather', categoria_id: 3
  Item.create nome_ptbr: 'Daniel Powter', categoria_id: 3
  Item.create nome_ptbr: 'Danielle Spencer', categoria_id: 3
  Item.create nome_ptbr: 'Dannii Minogue', categoria_id: 3
  Item.create nome_ptbr: 'Danny Ross', categoria_id: 3
  Item.create nome_ptbr: 'Darren Hayes', categoria_id: 3
  Item.create nome_ptbr: 'Dash & Will', categoria_id: 3
  Item.create nome_ptbr: 'Daughtry', categoria_id: 3
  Item.create nome_ptbr: 'David Bowie', categoria_id: 3
  Item.create nome_ptbr: 'David Campbell', categoria_id: 3
  Item.create nome_ptbr: 'David Gray', categoria_id: 3
  Item.create nome_ptbr: 'David Guetta', categoria_id: 3
  Item.create nome_ptbr: 'De La Soul', categoria_id: 3
  Item.create nome_ptbr: 'Dead By Sunrise', categoria_id: 3
  Item.create nome_ptbr: 'Dead Letter Circus', categoria_id: 3
  Item.create nome_ptbr: 'Dean Geyer', categoria_id: 3
  Item.create nome_ptbr: 'Debit MasterCard Priceless Music', categoria_id: 3
  Item.create nome_ptbr: 'Deep Dish', categoria_id: 3
  Item.create nome_ptbr: 'Deerhoof', categoria_id: 3
  Item.create nome_ptbr: 'Deez Nuts', categoria_id: 3
  Item.create nome_ptbr: 'Deftones', categoria_id: 3
  Item.create nome_ptbr: 'Delta Goodrem', categoria_id: 3
  Item.create nome_ptbr: 'Demi Lovato', categoria_id: 3
  Item.create nome_ptbr: 'Depeche Mode', categoria_id: 3
  Item.create nome_ptbr: 'Destiny\'s Child', categoria_id: 3
  Item.create nome_ptbr: 'Device', categoria_id: 3
  Item.create nome_ptbr: 'Devildriver', categoria_id: 3
  Item.create nome_ptbr: 'Diafrix', categoria_id: 3
  Item.create nome_ptbr: 'Diddy-Dirty Money', categoria_id: 3
  Item.create nome_ptbr: 'Dido', categoria_id: 3
  Item.create nome_ptbr: 'Diesel', categoria_id: 3
  Item.create nome_ptbr: 'Disclosure', categoria_id: 3
  Item.create nome_ptbr: 'Disney', categoria_id: 3
  Item.create nome_ptbr: 'Divinyls', categoria_id: 3
  Item.create nome_ptbr: 'Dixie Chicks', categoria_id: 3
  Item.create nome_ptbr: 'Dizzee Rascal', categoria_id: 3
  Item.create nome_ptbr: 'DJ Shadow', categoria_id: 3
  Item.create nome_ptbr: 'Django Django', categoria_id: 3
  Item.create nome_ptbr: 'Dolly Parton', categoria_id: 3
  Item.create nome_ptbr: 'Don Diablo', categoria_id: 3
  Item.create nome_ptbr: 'Donavon Frankenreiter', categoria_id: 3
  Item.create nome_ptbr: 'DragonForce', categoria_id: 3
  Item.create nome_ptbr: 'Drake', categoria_id: 3
  Item.create nome_ptbr: 'Drapht', categoria_id: 3
  Item.create nome_ptbr: 'Dream On Dreamer', categoria_id: 3
  Item.create nome_ptbr: 'Dream Theater', categoria_id: 3
  Item.create nome_ptbr: 'Drew Ryan Scott', categoria_id: 3
  Item.create nome_ptbr: 'Dropkick Murphys', categoria_id: 3
  Item.create nome_ptbr: 'Duck Sauce', categoria_id: 3
  Item.create nome_ptbr: 'Duffy', categoria_id: 3
  Item.create nome_ptbr: 'Dukes of Widsor', categoria_id: 3
  Item.create nome_ptbr: 'Duran Duran', categoria_id: 3
  Item.create nome_ptbr: 'EA Games', categoria_id: 3
  Item.create nome_ptbr: 'Eagles of Death Metal', categoria_id: 3
  Item.create nome_ptbr: 'Earl Sweatshirt', categoria_id: 3
  Item.create nome_ptbr: 'East 17', categoria_id: 3
  Item.create nome_ptbr: 'Ed Kowalczyk', categoria_id: 3
  Item.create nome_ptbr: 'Ed Sheeran', categoria_id: 3
  Item.create nome_ptbr: 'Edward Sharpe & The Magnetic Zeros', categoria_id: 3
  Item.create nome_ptbr: 'Elbow', categoria_id: 3
  Item.create nome_ptbr: 'Elen Levon', categoria_id: 3
  Item.create nome_ptbr: 'Eli Young Band', categoria_id: 3
  Item.create nome_ptbr: 'Eliza Doolittle', categoria_id: 3
  Item.create nome_ptbr: 'Ellie Goulding', categoria_id: 3
  Item.create nome_ptbr: 'Elton John', categoria_id: 3
  Item.create nome_ptbr: 'Elvis Costello And The Roots', categoria_id: 3
  Item.create nome_ptbr: 'Emeli Sande', categoria_id: 3
  Item.create nome_ptbr: 'Emerson Drive', categoria_id: 3
  Item.create nome_ptbr: 'Eminem', categoria_id: 3
  Item.create nome_ptbr: 'Emma Birdsall', categoria_id: 3
  Item.create nome_ptbr: 'Emma Louise', categoria_id: 3
  Item.create nome_ptbr: 'Emma Pask', categoria_id: 3
  Item.create nome_ptbr: 'Emma Watson', categoria_id: 3
  Item.create nome_ptbr: 'Empire Of The Sun', categoria_id: 3
  Item.create nome_ptbr: 'End Of Fashion', categoria_id: 3
  Item.create nome_ptbr: 'Engelbert Humperdinck', categoria_id: 3
  Item.create nome_ptbr: 'Enigma', categoria_id: 3
  Item.create nome_ptbr: 'Enrique Iglesias', categoria_id: 3
  Item.create nome_ptbr: 'Entourage', categoria_id: 3
  Item.create nome_ptbr: 'Eran James', categoria_id: 3
  Item.create nome_ptbr: 'Eric Hutchinson', categoria_id: 3
  Item.create nome_ptbr: 'Erica Baxter', categoria_id: 3
  Item.create nome_ptbr: 'Erika Heynatz', categoria_id: 3
  Item.create nome_ptbr: 'Eskimo Joe', categoria_id: 3
  Item.create nome_ptbr: 'Estelle', categoria_id: 3
  Item.create nome_ptbr: 'Eugene McGuinness', categoria_id: 3
  Item.create nome_ptbr: 'Evanescence', categoria_id: 3
  Item.create nome_ptbr: 'Eve', categoria_id: 3
  Item.create nome_ptbr: 'Evermore', categoria_id: 3
  Item.create nome_ptbr: 'Expatriate', categoria_id: 3
  Item.create nome_ptbr: 'Faith No More', categoria_id: 3
  Item.create nome_ptbr: 'Faithless', categoria_id: 3
  Item.create nome_ptbr: 'Faker', categoria_id: 3
  Item.create nome_ptbr: 'Fall Out Boy', categoria_id: 3
  Item.create nome_ptbr: 'Falling In Reverse', categoria_id: 3
  Item.create nome_ptbr: 'Falls Festival', categoria_id: 3
  Item.create nome_ptbr: 'Far East Movement', categoria_id: 3
  Item.create nome_ptbr: 'Fast Crew', categoria_id: 3
  Item.create nome_ptbr: 'Faster', categoria_id: 3
  Item.create nome_ptbr: 'Fat Freddy\'s Drop', categoria_id: 3
  Item.create nome_ptbr: 'Fatai Veamatahau', categoria_id: 3
  Item.create nome_ptbr: 'Fatboy Slim', categoria_id: 3
  Item.create nome_ptbr: 'Father\'s Day', categoria_id: 3
  Item.create nome_ptbr: 'Fedde Le Grand', categoria_id: 3
  Item.create nome_ptbr: 'Feeder', categoria_id: 3
  Item.create nome_ptbr: 'Felicity Urquhart', categoria_id: 3
  Item.create nome_ptbr: 'Fendde Le Grand and Funkerman', categoria_id: 3
  Item.create nome_ptbr: 'Fenech-Soler', categoria_id: 3
  Item.create nome_ptbr: 'Fergie', categoria_id: 3
  Item.create nome_ptbr: 'Figgkidd', categoria_id: 3
  Item.create nome_ptbr: 'Finger Eleven', categoria_id: 3
  Item.create nome_ptbr: 'Fitz And The Tantrums', categoria_id: 3
  Item.create nome_ptbr: 'Five Finger Death Punch', categoria_id: 3
  Item.create nome_ptbr: 'Flight Of The Conchords', categoria_id: 3
  Item.create nome_ptbr: 'Flo Rida', categoria_id: 3
  Item.create nome_ptbr: 'Florence + The Machine', categoria_id: 3
  Item.create nome_ptbr: 'Flume', categoria_id: 3
  Item.create nome_ptbr: 'Foals', categoria_id: 3
  Item.create nome_ptbr: 'Foo Fighters', categoria_id: 3
  Item.create nome_ptbr: 'For King & Country', categoria_id: 3
  Item.create nome_ptbr: 'Forever The Sickest Kids', categoria_id: 3
  Item.create nome_ptbr: 'Foster The People', categoria_id: 3
  Item.create nome_ptbr: 'Four Year Strong', categoria_id: 3
  Item.create nome_ptbr: 'Foxboro Hot Tubs', categoria_id: 3
  Item.create nome_ptbr: 'Frank Ocean', categoria_id: 3
  Item.create nome_ptbr: 'Franz Ferdinand', categoria_id: 3
  Item.create nome_ptbr: 'Frenzal Rhomb', categoria_id: 3
  Item.create nome_ptbr: 'From Autumn To Ashes', categoria_id: 3
  Item.create nome_ptbr: 'Fun', categoria_id: 3
  Item.create nome_ptbr: 'Future Music Festival', categoria_id: 3
  Item.create nome_ptbr: 'G Love', categoria_id: 3
  Item.create nome_ptbr: 'Gabriella Cilmi', categoria_id: 3
  Item.create nome_ptbr: 'Gabrielle', categoria_id: 3
  Item.create nome_ptbr: 'Gabrielle Aplin', categoria_id: 3
  Item.create nome_ptbr: 'Gadjo', categoria_id: 3
  Item.create nome_ptbr: 'Garbage', categoria_id: 3
  Item.create nome_ptbr: 'Gary Clark Jr.', categoria_id: 3
  Item.create nome_ptbr: 'Gavin DeGraw', categoria_id: 3
  Item.create nome_ptbr: 'Gears of War 2', categoria_id: 3
  Item.create nome_ptbr: 'Gemo', categoria_id: 3
  Item.create nome_ptbr: 'Geoffrey Gurrumul Yunupingu', categoria_id: 3
  Item.create nome_ptbr: 'Geordie Shore', categoria_id: 3
  Item.create nome_ptbr: 'George Michael', categoria_id: 3
  Item.create nome_ptbr: 'Get Him To The Greek', categoria_id: 3
  Item.create nome_ptbr: 'Gia Farrell', categoria_id: 3
  Item.create nome_ptbr: 'Gin', categoria_id: 3
  Item.create nome_ptbr: 'Girl Talk', categoria_id: 3
  Item.create nome_ptbr: 'Girlband', categoria_id: 3
  Item.create nome_ptbr: 'Girls Night In', categoria_id: 3
  Item.create nome_ptbr: 'Girls\' Generation', categoria_id: 3
  Item.create nome_ptbr: 'Glee', categoria_id: 3
  Item.create nome_ptbr: 'Glee Cast', categoria_id: 3
  Item.create nome_ptbr: 'Gloriana', categoria_id: 3
  Item.create nome_ptbr: 'Gnarls Barkley', categoria_id: 3
  Item.create nome_ptbr: 'Gold Fields', categoria_id: 3
  Item.create nome_ptbr: 'Golden Globe Awards', categoria_id: 3
  Item.create nome_ptbr: 'Goldfish', categoria_id: 3
  Item.create nome_ptbr: 'Goldfrapp', categoria_id: 3
  Item.create nome_ptbr: 'Goo Goo Dolls', categoria_id: 3
  Item.create nome_ptbr: 'Good Charlotte', categoria_id: 3
  Item.create nome_ptbr: 'Good Life', categoria_id: 3
  Item.create nome_ptbr: 'Good Vibrations Festival', categoria_id: 3
  Item.create nome_ptbr: 'Gorillaz', categoria_id: 3
  Item.create nome_ptbr: 'Gossip Girl', categoria_id: 3
  Item.create nome_ptbr: 'Gossip The', categoria_id: 3
  Item.create nome_ptbr: 'Gossling', categoria_id: 3
  Item.create nome_ptbr: 'Gotye', categoria_id: 3
  Item.create nome_ptbr: 'GOVS', categoria_id: 3
  Item.create nome_ptbr: 'Grace Potter And The Nocturnals', categoria_id: 3
  Item.create nome_ptbr: 'Green Day', categoria_id: 3
  Item.create nome_ptbr: 'Green Zone', categoria_id: 3
  Item.create nome_ptbr: 'Greetings from Tim Buckley', categoria_id: 3
  Item.create nome_ptbr: 'Greyson Chance', categoria_id: 3
  Item.create nome_ptbr: 'Grimm', categoria_id: 3
  Item.create nome_ptbr: 'Grinspoon', categoria_id: 3
  Item.create nome_ptbr: 'Groove Armada', categoria_id: 3
  Item.create nome_ptbr: 'Grouplove', categoria_id: 3
  Item.create nome_ptbr: 'Gummi Bear', categoria_id: 3
  Item.create nome_ptbr: 'Guy Sebastian', categoria_id: 3
  Item.create nome_ptbr: 'Gwen Stefani', categoria_id: 3
  Item.create nome_ptbr: 'Gym Class Heroes', categoria_id: 3
  Item.create nome_ptbr: 'Gyroscope', categoria_id: 3
  Item.create nome_ptbr: 'Hadouken!', categoria_id: 3
  Item.create nome_ptbr: 'HAIM', categoria_id: 3
  Item.create nome_ptbr: 'Haley', categoria_id: 3
  Item.create nome_ptbr: 'Hanson', categoria_id: 3
  Item.create nome_ptbr: 'Harrison Craig', categoria_id: 3
  Item.create nome_ptbr: 'Harry Potter and the Deathly Hallows -- Part 1 The Videogame', categoria_id: 3
  Item.create nome_ptbr: 'Harry Styles', categoria_id: 3
  Item.create nome_ptbr: 'Harvey Norman', categoria_id: 3
  Item.create nome_ptbr: 'Havana Brown', categoria_id: 3
  Item.create nome_ptbr: 'Hayley Warner', categoria_id: 3
  Item.create nome_ptbr: 'Hayley Westenra', categoria_id: 3
  Item.create nome_ptbr: 'Hellyeah', categoria_id: 3
  Item.create nome_ptbr: 'Hercules And Love Affair', categoria_id: 3
  Item.create nome_ptbr: 'Hey Monday', categoria_id: 3
  Item.create nome_ptbr: 'High School Musical', categoria_id: 3
  Item.create nome_ptbr: 'High School Musical 3', categoria_id: 3
  Item.create nome_ptbr: 'Hilary Duff', categoria_id: 3
  Item.create nome_ptbr: 'Hillsong Live', categoria_id: 3
  Item.create nome_ptbr: 'Hillsong United', categoria_id: 3
  Item.create nome_ptbr: 'Hillsong Young & Free', categoria_id: 3
  Item.create nome_ptbr: 'Hinder', categoria_id: 3
  Item.create nome_ptbr: 'Hockey', categoria_id: 3
  Item.create nome_ptbr: 'Holly Throsby', categoria_id: 3
  Item.create nome_ptbr: 'Hollywood Undead', categoria_id: 3
  Item.create nome_ptbr: 'Honorebel', categoria_id: 3
  Item.create nome_ptbr: 'Hoobastank', categoria_id: 3
  Item.create nome_ptbr: 'Hook \'N Sling', categoria_id: 3
  Item.create nome_ptbr: 'Horrors', categoria_id: 3
  Item.create nome_ptbr: 'Horrorshow', categoria_id: 3
  Item.create nome_ptbr: 'Hot Chelle Rae', categoria_id: 3
  Item.create nome_ptbr: 'Hot Lies', categoria_id: 3
  Item.create nome_ptbr: 'House vs. Hurricane', categoria_id: 3
  Item.create nome_ptbr: 'Hugh Hefner', categoria_id: 3
  Item.create nome_ptbr: 'Hugh Laurie', categoria_id: 3
  Item.create nome_ptbr: 'Hugh Sheridan', categoria_id: 3
  Item.create nome_ptbr: 'Human Nature', categoria_id: 3
  Item.create nome_ptbr: 'Hungry Kids Of Hungary', categoria_id: 3
  Item.create nome_ptbr: 'Husky Rescue', categoria_id: 3
  Item.create nome_ptbr: 'Hyundai New Motion Party', categoria_id: 3
  Item.create nome_ptbr: 'I Am Ghost', categoria_id: 3
  Item.create nome_ptbr: 'I Blame Coco', categoria_id: 3
  Item.create nome_ptbr: 'I Give It A Year', categoria_id: 3
  Item.create nome_ptbr: 'Ian Carey', categoria_id: 3
  Item.create nome_ptbr: 'Ian Carey Project', categoria_id: 3
  Item.create nome_ptbr: 'Ida Maria', categoria_id: 3
  Item.create nome_ptbr: 'Iggy Azalea', categoria_id: 3
  Item.create nome_ptbr: 'Il Divo', categoria_id: 3
  Item.create nome_ptbr: 'Illy', categoria_id: 3
  Item.create nome_ptbr: 'Imagine Dragons', categoria_id: 3
  Item.create nome_ptbr: 'Imogen Heap', categoria_id: 3
  Item.create nome_ptbr: 'In Fear And Faith', categoria_id: 3
  Item.create nome_ptbr: 'In Hearts Wake', categoria_id: 3
  Item.create nome_ptbr: 'Inaya Day', categoria_id: 3
  Item.create nome_ptbr: 'Incubus', categoria_id: 3
  Item.create nome_ptbr: 'Infernal', categoria_id: 3
  Item.create nome_ptbr: 'Inglourious Basterds', categoria_id: 3
  Item.create nome_ptbr: 'Interpol', categoria_id: 3
  Item.create nome_ptbr: 'INXS', categoria_id: 3
  Item.create nome_ptbr: 'Is Tropical', categoria_id: 3
  Item.create nome_ptbr: 'Israel Kamakawiwo\'ole', categoria_id: 3
  Item.create nome_ptbr: 'Ivan Gough', categoria_id: 3
  Item.create nome_ptbr: 'Iyaz', categoria_id: 3
  Item.create nome_ptbr: 'J Cole', categoria_id: 3
  Item.create nome_ptbr: 'J Holiday', categoria_id: 3
  Item.create nome_ptbr: 'Jabbawockeez', categoria_id: 3
  Item.create nome_ptbr: 'Jack Johnson', categoria_id: 3
  Item.create nome_ptbr: 'Jack Vidgen', categoria_id: 3
  Item.create nome_ptbr: 'Jack White & Alicia Keys', categoria_id: 3
  Item.create nome_ptbr: 'Jackie Onassis', categoria_id: 3
  Item.create nome_ptbr: 'Jade MacRae', categoria_id: 3
  Item.create nome_ptbr: 'Jai Waetford', categoria_id: 3
  Item.create nome_ptbr: 'Jake Bugg', categoria_id: 3
  Item.create nome_ptbr: 'Jakob Dylan', categoria_id: 3
  Item.create nome_ptbr: 'Jamelia', categoria_id: 3
  Item.create nome_ptbr: 'James Arthur', categoria_id: 3
  Item.create nome_ptbr: 'James Blake', categoria_id: 3
  Item.create nome_ptbr: 'James Blundell', categoria_id: 3
  Item.create nome_ptbr: 'James Blunt', categoria_id: 3
  Item.create nome_ptbr: 'James Kannis', categoria_id: 3
  Item.create nome_ptbr: 'James Morrison', categoria_id: 3
  Item.create nome_ptbr: 'James Vincent McMorrow', categoria_id: 3
  Item.create nome_ptbr: 'Jamie Foxx', categoria_id: 3
  Item.create nome_ptbr: 'Jamie T', categoria_id: 3
  Item.create nome_ptbr: 'Jamie Woon', categoria_id: 3
  Item.create nome_ptbr: 'Jamiroquai', categoria_id: 3
  Item.create nome_ptbr: 'Janelle Monae', categoria_id: 3
  Item.create nome_ptbr: 'Janet Jackson', categoria_id: 3
  Item.create nome_ptbr: 'Janoskians', categoria_id: 3
  Item.create nome_ptbr: 'Jasmine Rae', categoria_id: 3
  Item.create nome_ptbr: 'Jason Derulo', categoria_id: 3
  Item.create nome_ptbr: 'Jason Mraz', categoria_id: 3
  Item.create nome_ptbr: 'Jason Owen', categoria_id: 3
  Item.create nome_ptbr: 'Jay Sean', categoria_id: 3
  Item.create nome_ptbr: 'Jay-Z', categoria_id: 3
  Item.create nome_ptbr: 'Jazmine Sullivan', categoria_id: 3
  Item.create nome_ptbr: 'Jebediah', categoria_id: 3
  Item.create nome_ptbr: 'Jeff Buckley', categoria_id: 3
  Item.create nome_ptbr: 'Jeff Martin', categoria_id: 3
  Item.create nome_ptbr: 'Jenilee Reyes', categoria_id: 3
  Item.create nome_ptbr: 'Jennifer Lopez', categoria_id: 3
  Item.create nome_ptbr: 'Jesse Malin', categoria_id: 3
  Item.create nome_ptbr: 'Jesse McCartney', categoria_id: 3
  Item.create nome_ptbr: 'Jessica Mauboy', categoria_id: 3
  Item.create nome_ptbr: 'Jessica Simpson', categoria_id: 3
  Item.create nome_ptbr: 'Jessie J', categoria_id: 3
  Item.create nome_ptbr: 'Jessye Norman', categoria_id: 3
  Item.create nome_ptbr: 'Jet', categoria_id: 3
  Item.create nome_ptbr: 'Jimi Hendrix', categoria_id: 3
  Item.create nome_ptbr: 'Jimmy Barnes', categoria_id: 3
  Item.create nome_ptbr: 'Jimmy Eat World', categoria_id: 3
  Item.create nome_ptbr: 'JLS', categoria_id: 3
  Item.create nome_ptbr: 'Joel Madden', categoria_id: 3
  Item.create nome_ptbr: 'Joel Turner And The Modern Day Poets', categoria_id: 3
  Item.create nome_ptbr: 'John Butler Trio', categoria_id: 3
  Item.create nome_ptbr: 'John Fogerty', categoria_id: 3
  Item.create nome_ptbr: 'John Legend', categoria_id: 3
  Item.create nome_ptbr: 'John Legend and The Roots', categoria_id: 3
  Item.create nome_ptbr: 'John Mayer', categoria_id: 3
  Item.create nome_ptbr: 'John Newman', categoria_id: 3
  Item.create nome_ptbr: 'John Schumann', categoria_id: 3
  Item.create nome_ptbr: 'John Travolta & Olivia Newton-John', categoria_id: 3
  Item.create nome_ptbr: 'Johnny Cash', categoria_id: 3
  Item.create nome_ptbr: 'Johnny Horton', categoria_id: 3
  Item.create nome_ptbr: 'Johnny O\'Keefe', categoria_id: 3
  Item.create nome_ptbr: 'JoJo', categoria_id: 3
  Item.create nome_ptbr: 'Jonas Brothers', categoria_id: 3
  Item.create nome_ptbr: 'Jordin Sparks', categoria_id: 3
  Item.create nome_ptbr: 'Josh Groban', categoria_id: 3
  Item.create nome_ptbr: 'Josh Pyke', categoria_id: 3
  Item.create nome_ptbr: 'Josh Thomas', categoria_id: 3
  Item.create nome_ptbr: 'Joss Stone', categoria_id: 3
  Item.create nome_ptbr: 'Judas Priest', categoria_id: 3
  Item.create nome_ptbr: 'Judge Jules', categoria_id: 3
  Item.create nome_ptbr: 'Judith Durham', categoria_id: 3
  Item.create nome_ptbr: 'Juliette Lewis', categoria_id: 3
  Item.create nome_ptbr: 'Jump Smokers', categoria_id: 3
  Item.create nome_ptbr: 'Jump Street', categoria_id: 3
  Item.create nome_ptbr: 'Junior Sanchez', categoria_id: 3
  Item.create nome_ptbr: 'Junkie XL', categoria_id: 3
  Item.create nome_ptbr: 'Just Dance 2', categoria_id: 3
  Item.create nome_ptbr: 'Just Jack', categoria_id: 3
  Item.create nome_ptbr: 'Justice Crew', categoria_id: 3
  Item.create nome_ptbr: 'Justin Bieber', categoria_id: 3
  Item.create nome_ptbr: 'Justin Bieber Doll', categoria_id: 3
  Item.create nome_ptbr: 'Justin Moore', categoria_id: 3
  Item.create nome_ptbr: 'Justin Timberlake', categoria_id: 3
  Item.create nome_ptbr: 'Kaddisfly', categoria_id: 3
  Item.create nome_ptbr: 'Kaiser Chiefs', categoria_id: 3
  Item.create nome_ptbr: 'Kanye West', categoria_id: 3
  Item.create nome_ptbr: 'Karise Eden', categoria_id: 3
  Item.create nome_ptbr: 'Karmin', categoria_id: 3
  Item.create nome_ptbr: 'Karnivool', categoria_id: 3
  Item.create nome_ptbr: 'Kasabian', categoria_id: 3
  Item.create nome_ptbr: 'Kasey Chambers', categoria_id: 3
  Item.create nome_ptbr: 'Kasey Chambers & Shane Nicholson', categoria_id: 3
  Item.create nome_ptbr: 'Kat Deluna', categoria_id: 3
  Item.create nome_ptbr: 'Katastrophy Wife', categoria_id: 3
  Item.create nome_ptbr: 'Kate Alexa', categoria_id: 3
  Item.create nome_ptbr: 'Kate Ceberano', categoria_id: 3
  Item.create nome_ptbr: 'Kate DeAraugo', categoria_id: 3
  Item.create nome_ptbr: 'Kate Miller-Heidke', categoria_id: 3
  Item.create nome_ptbr: 'Kate Nash', categoria_id: 3
  Item.create nome_ptbr: 'Katharine McPhee', categoria_id: 3
  Item.create nome_ptbr: 'Katherine Jenkins', categoria_id: 3
  Item.create nome_ptbr: 'Katie Melua', categoria_id: 3
  Item.create nome_ptbr: 'Katie Noonan', categoria_id: 3
  Item.create nome_ptbr: 'Katy Perry', categoria_id: 3
  Item.create nome_ptbr: 'Kaz James', categoria_id: 3
  Item.create nome_ptbr: 'Keane', categoria_id: 3
  Item.create nome_ptbr: 'Keith Urban', categoria_id: 3
  Item.create nome_ptbr: 'Kelis', categoria_id: 3
  Item.create nome_ptbr: 'Kelly Clarkson', categoria_id: 3
  Item.create nome_ptbr: 'Kelly Osbourne', categoria_id: 3
  Item.create nome_ptbr: 'Kelly Price', categoria_id: 3
  Item.create nome_ptbr: 'Kelly Rowland', categoria_id: 3
  Item.create nome_ptbr: 'Kendrick Lamar', categoria_id: 3
  Item.create nome_ptbr: 'Kenton Duty', categoria_id: 3
  Item.create nome_ptbr: 'Keri Hilson', categoria_id: 3
  Item.create nome_ptbr: 'Kerli', categoria_id: 3
  Item.create nome_ptbr: 'Kerser', categoria_id: 3
  Item.create nome_ptbr: 'Kesha', categoria_id: 3
  Item.create nome_ptbr: 'Kevin Rudolf', categoria_id: 3
  Item.create nome_ptbr: 'Kid Bass', categoria_id: 3
  Item.create nome_ptbr: 'Kid Courageous', categoria_id: 3
  Item.create nome_ptbr: 'Kid Cudi', categoria_id: 3
  Item.create nome_ptbr: 'Kid Ink', categoria_id: 3
  Item.create nome_ptbr: 'Kids of 88', categoria_id: 3
  Item.create nome_ptbr: 'Kidz In Space', categoria_id: 3
  Item.create nome_ptbr: 'Killer', categoria_id: 3
  Item.create nome_ptbr: 'Killing Heidi', categoria_id: 3
  Item.create nome_ptbr: 'Killswitch Engage', categoria_id: 3
  Item.create nome_ptbr: 'Kim Sanders', categoria_id: 3
  Item.create nome_ptbr: 'Kings Of Leon', categoria_id: 3
  Item.create nome_ptbr: 'Kip Moore', categoria_id: 3
  Item.create nome_ptbr: 'Kirsty Lee Akers', categoria_id: 3
  Item.create nome_ptbr: 'Kisschasy', categoria_id: 3
  Item.create nome_ptbr: 'Klaxons', categoria_id: 3
  Item.create nome_ptbr: 'Kodaline', categoria_id: 3
  Item.create nome_ptbr: 'Korn', categoria_id: 3
  Item.create nome_ptbr: 'Kourtney And Kim Take New York', categoria_id: 3
  Item.create nome_ptbr: 'KT Tunstall', categoria_id: 3
  Item.create nome_ptbr: 'Kylie Minogue', categoria_id: 3
  Item.create nome_ptbr: 'La Roux', categoria_id: 3
  Item.create nome_ptbr: 'Labrinth', categoria_id: 3
  Item.create nome_ptbr: 'Lady Chann', categoria_id: 3
  Item.create nome_ptbr: 'Lady Gaga', categoria_id: 3
  Item.create nome_ptbr: 'Lady Sovereign', categoria_id: 3
  Item.create nome_ptbr: 'Ladyhawke', categoria_id: 3
  Item.create nome_ptbr: 'Lakyn Heperi', categoria_id: 3
  Item.create nome_ptbr: 'Late Of The Pier', categoria_id: 3
  Item.create nome_ptbr: 'Laura Mvula', categoria_id: 3
  Item.create nome_ptbr: 'Laura Marling', categoria_id: 3
  Item.create nome_ptbr: 'Laurent Wolf', categoria_id: 3
  Item.create nome_ptbr: 'Laze and Royal', categoria_id: 3
  Item.create nome_ptbr: 'Lea Michele', categoria_id: 3
  Item.create nome_ptbr: 'Leaves', categoria_id: 3
  Item.create nome_ptbr: 'Lee Ann Womack', categoria_id: 3
  Item.create nome_ptbr: 'Lee Harding', categoria_id: 3
  Item.create nome_ptbr: 'Lee Kernaghan', categoria_id: 3
  Item.create nome_ptbr: 'Lenka', categoria_id: 3
  Item.create nome_ptbr: 'Leona Lewis', categoria_id: 3
  Item.create nome_ptbr: 'Let It Shine', categoria_id: 3
  Item.create nome_ptbr: 'Lexicon Project', categoria_id: 3
  Item.create nome_ptbr: 'LG \'Qwerty\' Phone', categoria_id: 3
  Item.create nome_ptbr: 'LG - National Texting Championships', categoria_id: 3
  Item.create nome_ptbr: 'Lifehouse', categoria_id: 3
  Item.create nome_ptbr: 'Lij Gilmour', categoria_id: 3
  Item.create nome_ptbr: 'Lil\' Wayne', categoria_id: 3
  Item.create nome_ptbr: 'Lily Allen', categoria_id: 3
  Item.create nome_ptbr: 'Lindsay Lohan', categoria_id: 3
  Item.create nome_ptbr: 'Linkin Park', categoria_id: 3
  Item.create nome_ptbr: 'Lionel Richie', categoria_id: 3
  Item.create nome_ptbr: 'Lior', categoria_id: 3
  Item.create nome_ptbr: 'Lisa Mitchell', categoria_id: 3
  Item.create nome_ptbr: 'Listen Out', categoria_id: 3
  Item.create nome_ptbr: 'Little Birdy', categoria_id: 3
  Item.create nome_ptbr: 'Little Mix', categoria_id: 3
  Item.create nome_ptbr: 'Little Red', categoria_id: 3
  Item.create nome_ptbr: 'Live', categoria_id: 3
  Item.create nome_ptbr: 'LL Cool J', categoria_id: 3
  Item.create nome_ptbr: 'LMFAO', categoria_id: 3
  Item.create nome_ptbr: 'London Grammar', categoria_id: 3
  Item.create nome_ptbr: 'Love & Other Drugs', categoria_id: 3
  Item.create nome_ptbr: 'Lovers Electric', categoria_id: 3
  Item.create nome_ptbr: 'Lucenzo', categoria_id: 3
  Item.create nome_ptbr: 'Lucinda Williams', categoria_id: 3
  Item.create nome_ptbr: 'Luke Bryan', categoria_id: 3
  Item.create nome_ptbr: 'Luke Kennedy', categoria_id: 3
  Item.create nome_ptbr: 'Lupe Fiasco', categoria_id: 3
  Item.create nome_ptbr: 'Luscious Jackson', categoria_id: 3
  Item.create nome_ptbr: 'M.Pokora', categoria_id: 3
  Item.create nome_ptbr: 'Machine Head', categoria_id: 3
  Item.create nome_ptbr: 'Macklemore & Ryan Lewis', categoria_id: 3
  Item.create nome_ptbr: 'Macy Gray', categoria_id: 3
  Item.create nome_ptbr: 'Madonna', categoria_id: 3
  Item.create nome_ptbr: 'Mahalia Barnes', categoria_id: 3
  Item.create nome_ptbr: 'Mahalia Barnes + Prinnie Stevens', categoria_id: 3
  Item.create nome_ptbr: 'Maia Mitchell', categoria_id: 3
  Item.create nome_ptbr: 'Major Lazer', categoria_id: 3
  Item.create nome_ptbr: 'Malachai', categoria_id: 3
  Item.create nome_ptbr: 'Male Bonding', categoria_id: 3
  Item.create nome_ptbr: 'Mamma Mia - The Movie', categoria_id: 3
  Item.create nome_ptbr: 'Mammal', categoria_id: 3
  Item.create nome_ptbr: 'Mantra', categoria_id: 3
  Item.create nome_ptbr: 'Marc Collis', categoria_id: 3
  Item.create nome_ptbr: 'Marcia Hines', categoria_id: 3
  Item.create nome_ptbr: 'Mariah Carey', categoria_id: 3
  Item.create nome_ptbr: 'Marianas Trench', categoria_id: 3
  Item.create nome_ptbr: 'Marilyn Manson', categoria_id: 3
  Item.create nome_ptbr: 'Mario', categoria_id: 3
  Item.create nome_ptbr: 'Mark Hoppus', categoria_id: 3
  Item.create nome_ptbr: 'Mark Ronson', categoria_id: 3
  Item.create nome_ptbr: 'Mark Vincent', categoria_id: 3
  Item.create nome_ptbr: 'Mark Wilkinson', categoria_id: 3
  Item.create nome_ptbr: 'Maroon 5', categoria_id: 3
  Item.create nome_ptbr: 'Married To Jonas', categoria_id: 3
  Item.create nome_ptbr: 'Martin Kesici', categoria_id: 3
  Item.create nome_ptbr: 'Marvin Priest', categoria_id: 3
  Item.create nome_ptbr: 'Mary J Blige', categoria_id: 3
  Item.create nome_ptbr: 'Mass Effect 3', categoria_id: 3
  Item.create nome_ptbr: 'Mat Kearney', categoria_id: 3
  Item.create nome_ptbr: 'Matchbox 20', categoria_id: 3
  Item.create nome_ptbr: 'Matisyahu', categoria_id: 3
  Item.create nome_ptbr: 'Mattafix', categoria_id: 3
  Item.create nome_ptbr: 'Mattie Jay', categoria_id: 3
  Item.create nome_ptbr: 'Max & Bianca', categoria_id: 3
  Item.create nome_ptbr: 'Max Tundra', categoria_id: 3
  Item.create nome_ptbr: 'Maximo Park', categoria_id: 3
  Item.create nome_ptbr: 'Mayday Parade', categoria_id: 3
  Item.create nome_ptbr: 'Mayer Hawthorne', categoria_id: 3
  Item.create nome_ptbr: 'Maylene And The Sons Of Disaster', categoria_id: 3
  Item.create nome_ptbr: 'MC Lars', categoria_id: 3
  Item.create nome_ptbr: 'Mcalister Kemp', categoria_id: 3
  Item.create nome_ptbr: 'McFly', categoria_id: 3
  Item.create nome_ptbr: 'Megadeth', categoria_id: 3
  Item.create nome_ptbr: 'Megafortress', categoria_id: 3
  Item.create nome_ptbr: 'Meiko', categoria_id: 3
  Item.create nome_ptbr: 'Melanie B', categoria_id: 3
  Item.create nome_ptbr: 'Melanie Fiona', categoria_id: 3
  Item.create nome_ptbr: 'Melissa Tkautz', categoria_id: 3
  Item.create nome_ptbr: 'Melody Gardot', categoria_id: 3
  Item.create nome_ptbr: 'Men In Black 3', categoria_id: 3
  Item.create nome_ptbr: 'Mentos Fresh Tracks', categoria_id: 3
  Item.create nome_ptbr: 'Metallica', categoria_id: 3
  Item.create nome_ptbr: 'Metals', categoria_id: 3
  Item.create nome_ptbr: 'Methods Of Flow', categoria_id: 3
  Item.create nome_ptbr: 'Metro Station', categoria_id: 3
  Item.create nome_ptbr: 'Metronomy', categoria_id: 3
  Item.create nome_ptbr: 'MGMT', categoria_id: 3
  Item.create nome_ptbr: 'Michael Buble', categoria_id: 3
  Item.create nome_ptbr: 'Michael Franti & Spearhead', categoria_id: 3
  Item.create nome_ptbr: 'Michael Gray', categoria_id: 3
  Item.create nome_ptbr: 'Michael Jackson', categoria_id: 3
  Item.create nome_ptbr: 'Michael Paynter', categoria_id: 3
  Item.create nome_ptbr: 'Mickey Avalon', categoria_id: 3
  Item.create nome_ptbr: 'Midnight Oil', categoria_id: 3
  Item.create nome_ptbr: 'Midnight Youth', categoria_id: 3
  Item.create nome_ptbr: 'Mika', categoria_id: 3
  Item.create nome_ptbr: 'Mike Posner', categoria_id: 3
  Item.create nome_ptbr: 'Miley Cyrus', categoria_id: 3
  Item.create nome_ptbr: 'Mims', categoria_id: 3
  Item.create nome_ptbr: 'Ministry Of Sound', categoria_id: 3
  Item.create nome_ptbr: 'Mint Royale', categoria_id: 3
  Item.create nome_ptbr: 'Missing Hours', categoria_id: 3
  Item.create nome_ptbr: 'Missy Elliott', categoria_id: 3
  Item.create nome_ptbr: 'Missy Higgins', categoria_id: 3
  Item.create nome_ptbr: 'Mister Heavenly', categoria_id: 3
  Item.create nome_ptbr: 'Mitchel Musso', categoria_id: 3
  Item.create nome_ptbr: 'MKTO', categoria_id: 3
  Item.create nome_ptbr: 'Modest Mouse', categoria_id: 3
  Item.create nome_ptbr: 'Monte Carlo', categoria_id: 3
  Item.create nome_ptbr: 'Morgan Evans', categoria_id: 3
  Item.create nome_ptbr: 'Mosman Alder', categoria_id: 3
  Item.create nome_ptbr: 'Mother\'s Day', categoria_id: 3
  Item.create nome_ptbr: 'Movies', categoria_id: 3
  Item.create nome_ptbr: 'MPHO', categoria_id: 3
  Item.create nome_ptbr: 'Mr Hudson', categoria_id: 3
  Item.create nome_ptbr: 'Mr Little Jeans', categoria_id: 3
  Item.create nome_ptbr: 'Mr Selfridge', categoria_id: 3
  Item.create nome_ptbr: 'Mr. G', categoria_id: 3
  Item.create nome_ptbr: 'Ms Mr', categoria_id: 3
  Item.create nome_ptbr: 'Mumford & Sons', categoria_id: 3
  Item.create nome_ptbr: 'Murs', categoria_id: 3
  Item.create nome_ptbr: 'Muse', categoria_id: 3
  Item.create nome_ptbr: 'Musiq', categoria_id: 3
  Item.create nome_ptbr: 'Mute Math', categoria_id: 3
  Item.create nome_ptbr: 'Mutemath', categoria_id: 3
  Item.create nome_ptbr: 'My Chemical Romance', categoria_id: 3
  Item.create nome_ptbr: 'Mylo', categoria_id: 3
  Item.create nome_ptbr: 'N.E.R.D', categoria_id: 3
  Item.create nome_ptbr: 'Nas', categoria_id: 3
  Item.create nome_ptbr: 'Natalia Lesz', categoria_id: 3
  Item.create nome_ptbr: 'Natalie Bassingthwaighte', categoria_id: 3
  Item.create nome_ptbr: 'Natalie Gauci', categoria_id: 3
  Item.create nome_ptbr: 'Natalie Imbruglia', categoria_id: 3
  Item.create nome_ptbr: 'Natasha Bedingfield', categoria_id: 3
  Item.create nome_ptbr: 'Nathaniel', categoria_id: 3
  Item.create nome_ptbr: 'Ne-Yo', categoria_id: 3
  Item.create nome_ptbr: 'Neil Young & Crazy Horse', categoria_id: 3
  Item.create nome_ptbr: 'Neil Finn & Paul Kelly', categoria_id: 3
  Item.create nome_ptbr: 'Nelly', categoria_id: 3
  Item.create nome_ptbr: 'Nelly Furtado', categoria_id: 3
  Item.create nome_ptbr: 'Neon Trees', categoria_id: 3
  Item.create nome_ptbr: 'Nerina Pallot', categoria_id: 3
  Item.create nome_ptbr: 'Nevermind', categoria_id: 3
  Item.create nome_ptbr: 'New Boyz', categoria_id: 3
  Item.create nome_ptbr: 'New Edition', categoria_id: 3
  Item.create nome_ptbr: 'New Empire', categoria_id: 3
  Item.create nome_ptbr: 'New Kids On The Block', categoria_id: 3
  Item.create nome_ptbr: 'New Moon', categoria_id: 3
  Item.create nome_ptbr: 'Newton Faulkner', categoria_id: 3
  Item.create nome_ptbr: 'Nick Lachey', categoria_id: 3
  Item.create nome_ptbr: 'Nickelback', categoria_id: 3
  Item.create nome_ptbr: 'Nickelodeon Kids\' Choice Awards', categoria_id: 3
  Item.create nome_ptbr: 'Nickelodeon SLIMEFEST', categoria_id: 3
  Item.create nome_ptbr: 'Nicki Minaj', categoria_id: 3
  Item.create nome_ptbr: 'Nicole Richie', categoria_id: 3
  Item.create nome_ptbr: 'Nicole Scherzinger', categoria_id: 3
  Item.create nome_ptbr: 'Niki & The Dove', categoria_id: 3
  Item.create nome_ptbr: 'Nikki Webster', categoria_id: 3
  Item.create nome_ptbr: 'Nine Inch Nails', categoria_id: 3
  Item.create nome_ptbr: 'Nintendo Animal Crossing', categoria_id: 3
  Item.create nome_ptbr: 'Nirvana', categoria_id: 3
  Item.create nome_ptbr: 'Nitty', categoria_id: 3
  Item.create nome_ptbr: 'NKOTBSB', categoria_id: 3
  Item.create nome_ptbr: 'No Age', categoria_id: 3
  Item.create nome_ptbr: 'No Angels', categoria_id: 3
  Item.create nome_ptbr: 'No Doubt', categoria_id: 3
  Item.create nome_ptbr: 'Noah & The Whale', categoria_id: 3
  Item.create nome_ptbr: 'Norah Jones', categoria_id: 3
  Item.create nome_ptbr: 'Northlane', categoria_id: 3
  Item.create nome_ptbr: 'Notorious B.I.G', categoria_id: 3
  Item.create nome_ptbr: 'O\'Shea', categoria_id: 3
  Item.create nome_ptbr: 'O.A.R.', categoria_id: 3
  Item.create nome_ptbr: 'Oasis', categoria_id: 3
  Item.create nome_ptbr: 'Of Mice and Men', categoria_id: 3
  Item.create nome_ptbr: 'Of Monsters and Men', categoria_id: 3
  Item.create nome_ptbr: 'Of Montreal', categoria_id: 3
  Item.create nome_ptbr: 'Old Man River', categoria_id: 3
  Item.create nome_ptbr: 'Oleta Adams', categoria_id: 3
  Item.create nome_ptbr: 'Olly Murs', categoria_id: 3
  Item.create nome_ptbr: 'Omarion', categoria_id: 3
  Item.create nome_ptbr: 'One Day As A Lion', categoria_id: 3
  Item.create nome_ptbr: 'One Direction', categoria_id: 3
  Item.create nome_ptbr: 'OneRepublic', categoria_id: 3
  Item.create nome_ptbr: 'Operator Please', categoria_id: 3
  Item.create nome_ptbr: 'Oprah Winfrey', categoria_id: 3
  Item.create nome_ptbr: 'Outkast', categoria_id: 3
  Item.create nome_ptbr: 'Owl City', categoria_id: 3
  Item.create nome_ptbr: 'Owl Eyes', categoria_id: 3
  Item.create nome_ptbr: 'P-Money', categoria_id: 3
  Item.create nome_ptbr: 'P.Diddy', categoria_id: 3
  Item.create nome_ptbr: 'Packed To The Rafters', categoria_id: 3
  Item.create nome_ptbr: 'Paloma Faith', categoria_id: 3
  Item.create nome_ptbr: 'Panic! At The Disco', categoria_id: 3
  Item.create nome_ptbr: 'Paolo Nutini', categoria_id: 3
  Item.create nome_ptbr: 'Papas Fritas', categoria_id: 3
  Item.create nome_ptbr: 'Papercuts', categoria_id: 3
  Item.create nome_ptbr: 'Paramore', categoria_id: 3
  Item.create nome_ptbr: 'Paris Hilton', categoria_id: 3
  Item.create nome_ptbr: 'Paris Wells', categoria_id: 3
  Item.create nome_ptbr: 'Passenger', categoria_id: 3
  Item.create nome_ptbr: 'Passion Pit', categoria_id: 3
  Item.create nome_ptbr: 'Patrick Stump Stump', categoria_id: 3
  Item.create nome_ptbr: 'Patrizio Buanne', categoria_id: 3
  Item.create nome_ptbr: 'Paul Dempsey', categoria_id: 3
  Item.create nome_ptbr: 'Paul Kelly', categoria_id: 3
  Item.create nome_ptbr: 'Paul Mac', categoria_id: 3
  Item.create nome_ptbr: 'Paul McCartney', categoria_id: 3
  Item.create nome_ptbr: 'Paul Potts', categoria_id: 3
  Item.create nome_ptbr: 'Paul Simon', categoria_id: 3
  Item.create nome_ptbr: 'Paul Van Dyk', categoria_id: 3
  Item.create nome_ptbr: 'Paul Weller', categoria_id: 3
  Item.create nome_ptbr: 'Paula DeAnda', categoria_id: 3
  Item.create nome_ptbr: 'Paulini', categoria_id: 3
  Item.create nome_ptbr: 'Pearl Jam', categoria_id: 3
  Item.create nome_ptbr: 'Pendulum', categoria_id: 3
  Item.create nome_ptbr: 'Perez Hilton', categoria_id: 3
  Item.create nome_ptbr: 'Perfect Tripod', categoria_id: 3
  Item.create nome_ptbr: 'Periphery', categoria_id: 3
  Item.create nome_ptbr: 'Perry Farrell', categoria_id: 3
  Item.create nome_ptbr: 'Pet Shop Boys', categoria_id: 3
  Item.create nome_ptbr: 'Pete Murray', categoria_id: 3
  Item.create nome_ptbr: 'Peter Blakeley', categoria_id: 3
  Item.create nome_ptbr: 'PEZ', categoria_id: 3
  Item.create nome_ptbr: 'Pharrell Williams', categoria_id: 3
  Item.create nome_ptbr: 'Phillip Phillips', categoria_id: 3
  Item.create nome_ptbr: 'Phoenix', categoria_id: 3
  Item.create nome_ptbr: 'Phrase', categoria_id: 3
  Item.create nome_ptbr: 'Pico', categoria_id: 3
  Item.create nome_ptbr: 'Pink', categoria_id: 3
  Item.create nome_ptbr: 'Pitbull', categoria_id: 3
  Item.create nome_ptbr: 'Pixie Lott', categoria_id: 3
  Item.create nome_ptbr: 'Pixies', categoria_id: 3
  Item.create nome_ptbr: 'Placebo', categoria_id: 3
  Item.create nome_ptbr: 'Plain White T\'s', categoria_id: 3
  Item.create nome_ptbr: 'Planetshakers', categoria_id: 3
  Item.create nome_ptbr: 'Plastiscines', categoria_id: 3
  Item.create nome_ptbr: 'Playground Weekender', categoria_id: 3
  Item.create nome_ptbr: 'PlayStation 3', categoria_id: 3
  Item.create nome_ptbr: 'PLUDO', categoria_id: 3
  Item.create nome_ptbr: 'Plus 44', categoria_id: 3
  Item.create nome_ptbr: 'Pond', categoria_id: 3
  Item.create nome_ptbr: 'Porcelain', categoria_id: 3
  Item.create nome_ptbr: 'Portabella', categoria_id: 3
  Item.create nome_ptbr: 'Portugal. The Man', categoria_id: 3
  Item.create nome_ptbr: 'Powderfinger', categoria_id: 3
  Item.create nome_ptbr: 'Prepared Like A Bride', categoria_id: 3
  Item.create nome_ptbr: 'Pretty Reckless', categoria_id: 3
  Item.create nome_ptbr: 'Prima J', categoria_id: 3
  Item.create nome_ptbr: 'Prince', categoria_id: 3
  Item.create nome_ptbr: 'Prince Rama', categoria_id: 3
  Item.create nome_ptbr: 'Prinnie', categoria_id: 3
  Item.create nome_ptbr: 'Project X', categoria_id: 3
  Item.create nome_ptbr: 'Promised Land', categoria_id: 3
  Item.create nome_ptbr: 'PSY', categoria_id: 3
  Item.create nome_ptbr: 'Queen', categoria_id: 3
  Item.create nome_ptbr: 'QUEEN BITCH', categoria_id: 3
  Item.create nome_ptbr: 'Queens Of The Stone Age', categoria_id: 3
  Item.create nome_ptbr: 'Queens Of The Stone Age & Nine Inch Nails Tour', categoria_id: 3
  Item.create nome_ptbr: 'R. Kelly', categoria_id: 3
  Item.create nome_ptbr: 'Ra Ra Riots', categoria_id: 3
  Item.create nome_ptbr: 'Rachael Leahcar', categoria_id: 3
  Item.create nome_ptbr: 'Radiohead', categoria_id: 3
  Item.create nome_ptbr: 'Rage Against The Machine', categoria_id: 3
  Item.create nome_ptbr: 'Random', categoria_id: 3
  Item.create nome_ptbr: 'Rates', categoria_id: 3
  Item.create nome_ptbr: 'Ray J', categoria_id: 3
  Item.create nome_ptbr: 'Razorlight', categoria_id: 3
  Item.create nome_ptbr: 'Reba McEntire', categoria_id: 3
  Item.create nome_ptbr: 'Rebecca Ferguson', categoria_id: 3
  Item.create nome_ptbr: 'Red Foo', categoria_id: 3
  Item.create nome_ptbr: 'Red Hot Chili Peppers', categoria_id: 3
  Item.create nome_ptbr: 'Red Riding Hood', categoria_id: 3
  Item.create nome_ptbr: 'Reece Mastin', categoria_id: 3
  Item.create nome_ptbr: 'Regina Spektor', categoria_id: 3
  Item.create nome_ptbr: 'Regular John', categoria_id: 3
  Item.create nome_ptbr: 'REM', categoria_id: 3
  Item.create nome_ptbr: 'Renee Geyer', categoria_id: 3
  Item.create nome_ptbr: 'Renee\'s LA Blog', categoria_id: 3
  Item.create nome_ptbr: 'Retribution Gospel Choir', categoria_id: 3
  Item.create nome_ptbr: 'Revenge', categoria_id: 3
  Item.create nome_ptbr: 'Ricki-Lee', categoria_id: 3
  Item.create nome_ptbr: 'Ricky Martin', categoria_id: 3
  Item.create nome_ptbr: 'Rihanna', categoria_id: 3
  Item.create nome_ptbr: 'Rimmel Vinyl Max', categoria_id: 3
  Item.create nome_ptbr: 'Rise Against', categoria_id: 3
  Item.create nome_ptbr: 'Rita Ora', categoria_id: 3
  Item.create nome_ptbr: 'Roadrunner United', categoria_id: 3
  Item.create nome_ptbr: 'Rob Hirst', categoria_id: 3
  Item.create nome_ptbr: 'Rob Thomas', categoria_id: 3
  Item.create nome_ptbr: 'Rob Zombie', categoria_id: 3
  Item.create nome_ptbr: 'Robbie Williams', categoria_id: 3
  Item.create nome_ptbr: 'Robert Delong', categoria_id: 3
  Item.create nome_ptbr: 'Robert Smith', categoria_id: 3
  Item.create nome_ptbr: 'Robertson Brothers', categoria_id: 3
  Item.create nome_ptbr: 'Robin Thicke', categoria_id: 3
  Item.create nome_ptbr: 'Robyn', categoria_id: 3
  Item.create nome_ptbr: 'Rod Stewart', categoria_id: 3
  Item.create nome_ptbr: 'Rodriguez', categoria_id: 3
  Item.create nome_ptbr: 'Rogue Traders', categoria_id: 3
  Item.create nome_ptbr: 'Ronan Keating', categoria_id: 3
  Item.create nome_ptbr: 'Room Eleven', categoria_id: 3
  Item.create nome_ptbr: 'Ruby Rose', categoria_id: 3
  Item.create nome_ptbr: 'Rudimental', categoria_id: 3
  Item.create nome_ptbr: 'Rufus', categoria_id: 3
  Item.create nome_ptbr: 'Rushcutter', categoria_id: 3
  Item.create nome_ptbr: 'Russell Morris', categoria_id: 3
  Item.create nome_ptbr: 'Ry Cuming', categoria_id: 3
  Item.create nome_ptbr: 'Ryan Adams', categoria_id: 3
  Item.create nome_ptbr: 'Ryan Keen', categoria_id: 3
  Item.create nome_ptbr: 'Sade', categoria_id: 3
  Item.create nome_ptbr: 'Safety Suit', categoria_id: 3
  Item.create nome_ptbr: 'SAG Awards', categoria_id: 3
  Item.create nome_ptbr: 'Salmonella Dub', categoria_id: 3
  Item.create nome_ptbr: 'Sam Sparro', categoria_id: 3
  Item.create nome_ptbr: 'Sam Worthington', categoria_id: 3
  Item.create nome_ptbr: 'Samantha Jade', categoria_id: 3
  Item.create nome_ptbr: 'Sammy Adams', categoria_id: 3
  Item.create nome_ptbr: 'Samuel Jackson', categoria_id: 3
  Item.create nome_ptbr: 'Samy Deluxe', categoria_id: 3
  Item.create nome_ptbr: 'Sandi Thom', categoria_id: 3
  Item.create nome_ptbr: 'Santana', categoria_id: 3
  Item.create nome_ptbr: 'Santana feat. Steven Tyler', categoria_id: 3
  Item.create nome_ptbr: 'Sara Bareilles', categoria_id: 3
  Item.create nome_ptbr: 'Sara Storer', categoria_id: 3
  Item.create nome_ptbr: 'Sarah Blasko', categoria_id: 3
  Item.create nome_ptbr: 'Sarah De Bono', categoria_id: 3
  Item.create nome_ptbr: 'Sarah McLeod', categoria_id: 3
  Item.create nome_ptbr: 'Satyricon', categoria_id: 3
  Item.create nome_ptbr: 'Savage', categoria_id: 3
  Item.create nome_ptbr: 'Savage Garden', categoria_id: 3
  Item.create nome_ptbr: 'Saviour', categoria_id: 3
  Item.create nome_ptbr: 'Scarface', categoria_id: 3
  Item.create nome_ptbr: 'Scarlett Belle', categoria_id: 3
  Item.create nome_ptbr: 'Scarlett O\'Hara', categoria_id: 3
  Item.create nome_ptbr: 'Scissor Sisters', categoria_id: 3
  Item.create nome_ptbr: 'Scott Weiland Weiland', categoria_id: 3
  Item.create nome_ptbr: 'Scouting For Girls', categoria_id: 3
  Item.create nome_ptbr: 'Scribe', categoria_id: 3
  Item.create nome_ptbr: 'Sean Garrett', categoria_id: 3
  Item.create nome_ptbr: 'Sean Kingston', categoria_id: 3
  Item.create nome_ptbr: 'Sean Paul', categoria_id: 3
  Item.create nome_ptbr: 'Seany B', categoria_id: 3
  Item.create nome_ptbr: 'Secondhand Serenade', categoria_id: 3
  Item.create nome_ptbr: 'Seether', categoria_id: 3
  Item.create nome_ptbr: 'Selena Gomez', categoria_id: 3
  Item.create nome_ptbr: 'Selena Gomez & The Scene', categoria_id: 3
  Item.create nome_ptbr: 'Semi Precious Weapons', categoria_id: 3
  Item.create nome_ptbr: 'September', categoria_id: 3
  Item.create nome_ptbr: 'Set Your Goals', categoria_id: 3
  Item.create nome_ptbr: 'Seth Sentry', categoria_id: 3
  Item.create nome_ptbr: 'Sex & The City', categoria_id: 3
  Item.create nome_ptbr: 'Shaggy', categoria_id: 3
  Item.create nome_ptbr: 'Shake It Up', categoria_id: 3
  Item.create nome_ptbr: 'Shakira', categoria_id: 3
  Item.create nome_ptbr: 'Shania Twain', categoria_id: 3
  Item.create nome_ptbr: 'Shannon Noll', categoria_id: 3
  Item.create nome_ptbr: 'Shannon Noll & Nat Bassingthwaighte', categoria_id: 3
  Item.create nome_ptbr: 'Sharam', categoria_id: 3
  Item.create nome_ptbr: 'Sharks', categoria_id: 3
  Item.create nome_ptbr: 'She & Him', categoria_id: 3
  Item.create nome_ptbr: 'Shihad', categoria_id: 3
  Item.create nome_ptbr: 'ShockOne', categoria_id: 3
  Item.create nome_ptbr: 'Short Stack', categoria_id: 3
  Item.create nome_ptbr: 'Shwayze', categoria_id: 3
  Item.create nome_ptbr: 'Sick Puppies', categoria_id: 3
  Item.create nome_ptbr: 'Sigur Ros', categoria_id: 3
  Item.create nome_ptbr: 'Silverchair', categoria_id: 3
  Item.create nome_ptbr: 'Simple Plan', categoria_id: 3
  Item.create nome_ptbr: 'SingStar Boybands vs Girlbands', categoria_id: 3
  Item.create nome_ptbr: 'Skillet', categoria_id: 3
  Item.create nome_ptbr: 'Skrillex', categoria_id: 3
  Item.create nome_ptbr: 'Slash', categoria_id: 3
  Item.create nome_ptbr: 'Slash feat Myles Kennedy and the Conspirators', categoria_id: 3
  Item.create nome_ptbr: 'Sleeping With Sirens', categoria_id: 3
  Item.create nome_ptbr: 'Slim Dusty', categoria_id: 3
  Item.create nome_ptbr: 'Slinkee Minx', categoria_id: 3
  Item.create nome_ptbr: 'Slow Down Honey', categoria_id: 3
  Item.create nome_ptbr: 'Small Mercies', categoria_id: 3
  Item.create nome_ptbr: 'Smashing Pumpkins', categoria_id: 3
  Item.create nome_ptbr: 'Smith & Western', categoria_id: 3
  Item.create nome_ptbr: 'Snakadaktal', categoria_id: 3
  Item.create nome_ptbr: 'Sneaky Sound System', categoria_id: 3
  Item.create nome_ptbr: 'Snitch', categoria_id: 3
  Item.create nome_ptbr: 'Snoop Dogg', categoria_id: 3
  Item.create nome_ptbr: 'Snow Patrol', categoria_id: 3
  Item.create nome_ptbr: 'Snow Patrol Take Back Your City Promo', categoria_id: 3
  Item.create nome_ptbr: 'So Fresh', categoria_id: 3
  Item.create nome_ptbr: 'Social Distortion', categoria_id: 3
  Item.create nome_ptbr: 'Sol3 Mio', categoria_id: 3
  Item.create nome_ptbr: 'Something For Kate', categoria_id: 3
  Item.create nome_ptbr: 'Sonic Youth', categoria_id: 3
  Item.create nome_ptbr: 'Sony Music', categoria_id: 3
  Item.create nome_ptbr: 'Sophie Ellis Bextor', categoria_id: 3
  Item.create nome_ptbr: 'Soulfly', categoria_id: 3
  Item.create nome_ptbr: 'Soulja Boy Tell \'Em', categoria_id: 3
  Item.create nome_ptbr: 'Soulmagic', categoria_id: 3
  Item.create nome_ptbr: 'Sound Relief', categoria_id: 3
  Item.create nome_ptbr: 'Soundscape Festival', categoria_id: 3
  Item.create nome_ptbr: 'Soundwave Festival', categoria_id: 3
  Item.create nome_ptbr: 'Span', categoria_id: 3
  Item.create nome_ptbr: 'Sparkadia', categoria_id: 3
  Item.create nome_ptbr: 'Spector', categoria_id: 3
  Item.create nome_ptbr: 'Spice Girls', categoria_id: 3
  Item.create nome_ptbr: 'Spiderbait', categoria_id: 3
  Item.create nome_ptbr: 'Spit Syndicate', categoria_id: 3
  Item.create nome_ptbr: 'Splendour In The Grass', categoria_id: 3
  Item.create nome_ptbr: 'St. Jerome\'s Laneway Festival', categoria_id: 3
  Item.create nome_ptbr: 'Stacie Orrico', categoria_id: 3
  Item.create nome_ptbr: 'Stalingrad Cowgirls', categoria_id: 3
  Item.create nome_ptbr: 'Stan Walker', categoria_id: 3
  Item.create nome_ptbr: 'Stana Katic', categoria_id: 3
  Item.create nome_ptbr: 'Star Struck', categoria_id: 3
  Item.create nome_ptbr: 'Static Revenger', categoria_id: 3
  Item.create nome_ptbr: 'Static X', categoria_id: 3
  Item.create nome_ptbr: 'Steel Panther', categoria_id: 3
  Item.create nome_ptbr: 'Step Up 4 Miami Heat', categoria_id: 3
  Item.create nome_ptbr: 'Stephanie McIntosh', categoria_id: 3
  Item.create nome_ptbr: 'Stereophonics', categoria_id: 3
  Item.create nome_ptbr: 'Stereosonic', categoria_id: 3
  Item.create nome_ptbr: 'Steve Aoki', categoria_id: 3
  Item.create nome_ptbr: 'Steve Miller Band', categoria_id: 3
  Item.create nome_ptbr: 'Sticky Fingers', categoria_id: 3
  Item.create nome_ptbr: 'Stiff Dylans', categoria_id: 3
  Item.create nome_ptbr: 'Still Corners', categoria_id: 3
  Item.create nome_ptbr: 'Sting', categoria_id: 3
  Item.create nome_ptbr: 'Stone Sour', categoria_id: 3
  Item.create nome_ptbr: 'Stonefield', categoria_id: 3
  Item.create nome_ptbr: 'Strange Talk', categoria_id: 3
  Item.create nome_ptbr: 'Sublime with Rome', categoria_id: 3
  Item.create nome_ptbr: 'Sugababes', categoria_id: 3
  Item.create nome_ptbr: 'Sum 41', categoria_id: 3
  Item.create nome_ptbr: 'Summadayze', categoria_id: 3
  Item.create nome_ptbr: 'Summer Festivals', categoria_id: 3
  Item.create nome_ptbr: 'Sunny Sweeney', categoria_id: 3
  Item.create nome_ptbr: 'Susan Boyle', categoria_id: 3
  Item.create nome_ptbr: 'Swedish House Mafia', categoria_id: 3
  Item.create nome_ptbr: 'Switchfoot', categoria_id: 3
  Item.create nome_ptbr: 'Syke\'n\'Sugarstarr', categoria_id: 3
  Item.create nome_ptbr: 'T\'N\'T', categoria_id: 3
  Item.create nome_ptbr: 'T-Pain', categoria_id: 3
  Item.create nome_ptbr: 'T.I.', categoria_id: 3
  Item.create nome_ptbr: 'Taio Cruz', categoria_id: 3
  Item.create nome_ptbr: 'Take 40 Australia', categoria_id: 3
  Item.create nome_ptbr: 'Take 40 Celebrates', categoria_id: 3
  Item.create nome_ptbr: 'Take 40 Live', categoria_id: 3
  Item.create nome_ptbr: 'Take That', categoria_id: 3
  Item.create nome_ptbr: 'Tamara Jaber', categoria_id: 3
  Item.create nome_ptbr: 'Taproot', categoria_id: 3
  Item.create nome_ptbr: 'Taylor Henderson', categoria_id: 3
  Item.create nome_ptbr: 'Taylor Swift', categoria_id: 3
  Item.create nome_ptbr: 'Teddy Geiger', categoria_id: 3
  Item.create nome_ptbr: 'Teen Wolf', categoria_id: 3
  Item.create nome_ptbr: 'Tenacious D', categoria_id: 3
  Item.create nome_ptbr: 'The 12th Man', categoria_id: 3
  Item.create nome_ptbr: 'The Academy Is...', categoria_id: 3
  Item.create nome_ptbr: 'The Agony Scene', categoria_id: 3
  Item.create nome_ptbr: 'The Androids', categoria_id: 3
  Item.create nome_ptbr: 'The Aston Shuffle', categoria_id: 3
  Item.create nome_ptbr: 'The Audreys', categoria_id: 3
  Item.create nome_ptbr: 'The Band Perry', categoria_id: 3
  Item.create nome_ptbr: 'The Beach Boys', categoria_id: 3
  Item.create nome_ptbr: 'The Beatles', categoria_id: 3
  Item.create nome_ptbr: 'The Beautiful Girls', categoria_id: 3
  Item.create nome_ptbr: 'The Black Ghosts', categoria_id: 3
  Item.create nome_ptbr: 'The Bronx', categoria_id: 3
  Item.create nome_ptbr: 'The Broods', categoria_id: 3
  Item.create nome_ptbr: 'The Butterfly Effect', categoria_id: 3
  Item.create nome_ptbr: 'The Camels', categoria_id: 3
  Item.create nome_ptbr: 'The Canyons', categoria_id: 3
  Item.create nome_ptbr: 'The Cat Empire', categoria_id: 3
  Item.create nome_ptbr: 'The Cheats', categoria_id: 3
  Item.create nome_ptbr: 'The Civil Wars', categoria_id: 3
  Item.create nome_ptbr: 'The Collective', categoria_id: 3
  Item.create nome_ptbr: 'The Cure', categoria_id: 3
  Item.create nome_ptbr: 'The Dandy Warhols', categoria_id: 3
  Item.create nome_ptbr: 'The Darkness', categoria_id: 3
  Item.create nome_ptbr: 'The Dead Weather', categoria_id: 3
  Item.create nome_ptbr: 'The Dissociatives', categoria_id: 3
  Item.create nome_ptbr: 'The Drones', categoria_id: 3
  Item.create nome_ptbr: 'The Eagles', categoria_id: 3
  Item.create nome_ptbr: 'The Eighties Matchbox B-Line Disaster', categoria_id: 3
  Item.create nome_ptbr: 'The Fader DJs', categoria_id: 3
  Item.create nome_ptbr: 'The Feelers', categoria_id: 3
  Item.create nome_ptbr: 'The Finn Brothers', categoria_id: 3
  Item.create nome_ptbr: 'The Fratellis', categoria_id: 3
  Item.create nome_ptbr: 'The Fray', categoria_id: 3
  Item.create nome_ptbr: 'The Galvatrons', categoria_id: 3
  Item.create nome_ptbr: 'The Game', categoria_id: 3
  Item.create nome_ptbr: 'The Grates', categoria_id: 3
  Item.create nome_ptbr: 'The Great Gatsby', categoria_id: 3
  Item.create nome_ptbr: 'The Gyuto Monks Of Tibet', categoria_id: 3
  Item.create nome_ptbr: 'The Head and the Heart', categoria_id: 3
  Item.create nome_ptbr: 'The Hills', categoria_id: 3
  Item.create nome_ptbr: 'The Hilltop Hoods', categoria_id: 3
  Item.create nome_ptbr: 'The Hook Up', categoria_id: 3
  Item.create nome_ptbr: 'The Horrors', categoria_id: 3
  Item.create nome_ptbr: 'The Host', categoria_id: 3
  Item.create nome_ptbr: 'The Hot Lies', categoria_id: 3
  Item.create nome_ptbr: 'The Hours', categoria_id: 3
  Item.create nome_ptbr: 'The Jezabels', categoria_id: 3
  Item.create nome_ptbr: 'The Jim Jones Revue', categoria_id: 3
  Item.create nome_ptbr: 'The Jungle Giants', categoria_id: 3
  Item.create nome_ptbr: 'The Killers', categoria_id: 3
  Item.create nome_ptbr: 'The Kin', categoria_id: 3
  Item.create nome_ptbr: 'The Kooks', categoria_id: 3
  Item.create nome_ptbr: 'The Last Goodnight', categoria_id: 3
  Item.create nome_ptbr: 'The Last Song', categoria_id: 3
  Item.create nome_ptbr: 'The Life And Times', categoria_id: 3
  Item.create nome_ptbr: 'The Living End', categoria_id: 3
  Item.create nome_ptbr: 'The Lone Below', categoria_id: 3
  Item.create nome_ptbr: 'The Lonely Island', categoria_id: 3
  Item.create nome_ptbr: 'The Lost Gospel', categoria_id: 3
  Item.create nome_ptbr: 'The Lumineers', categoria_id: 3
  Item.create nome_ptbr: 'THE MADDENS', categoria_id: 3
  Item.create nome_ptbr: 'The Mark of Cain', categoria_id: 3
  Item.create nome_ptbr: 'The Medics', categoria_id: 3
  Item.create nome_ptbr: 'The Midnight Beasts', categoria_id: 3
  Item.create nome_ptbr: 'The Mission District', categoria_id: 3
  Item.create nome_ptbr: 'The Naked & Famous', categoria_id: 3
  Item.create nome_ptbr: 'The National', categoria_id: 3
  Item.create nome_ptbr: 'The Offspring', categoria_id: 3
  Item.create nome_ptbr: 'The Only', categoria_id: 3
  Item.create nome_ptbr: 'The Others', categoria_id: 3
  Item.create nome_ptbr: 'The Paper Kites', categoria_id: 3
  Item.create nome_ptbr: 'The Paper Raincoat', categoria_id: 3
  Item.create nome_ptbr: 'The Police', categoria_id: 3
  Item.create nome_ptbr: 'The Potbelleez', categoria_id: 3
  Item.create nome_ptbr: 'The Presets', categoria_id: 3
  Item.create nome_ptbr: 'The Pretty Reckless', categoria_id: 3
  Item.create nome_ptbr: 'The Puppini Sisters', categoria_id: 3
  Item.create nome_ptbr: 'The Pussycat Dolls', categoria_id: 3
  Item.create nome_ptbr: 'The Rolling Stones', categoria_id: 3
  Item.create nome_ptbr: 'The Rubens', categoria_id: 3
  Item.create nome_ptbr: 'The Scare', categoria_id: 3
  Item.create nome_ptbr: 'The Script', categoria_id: 3
  Item.create nome_ptbr: 'The Shins', categoria_id: 3
  Item.create nome_ptbr: 'The Sleepy Jackson', categoria_id: 3
  Item.create nome_ptbr: 'The Social Network', categoria_id: 3
  Item.create nome_ptbr: 'The Spazzys', categoria_id: 3
  Item.create nome_ptbr: 'The Streets', categoria_id: 3
  Item.create nome_ptbr: 'The Strokes', categoria_id: 3
  Item.create nome_ptbr: 'The Temper Trap', categoria_id: 3
  Item.create nome_ptbr: 'The Ting Tings', categoria_id: 3
  Item.create nome_ptbr: 'The Tourist', categoria_id: 3
  Item.create nome_ptbr: 'The Twilight Saga: Breaking Dawn', categoria_id: 3
  Item.create nome_ptbr: 'The Twilight Saga: Eclipse', categoria_id: 3
  Item.create nome_ptbr: 'The Twilight Singers', categoria_id: 3
  Item.create nome_ptbr: 'The Used', categoria_id: 3
  Item.create nome_ptbr: 'The Vamps', categoria_id: 3
  Item.create nome_ptbr: 'The Vasco Era', categoria_id: 3
  Item.create nome_ptbr: 'The Veronicas', categoria_id: 3
  Item.create nome_ptbr: 'The Vines', categoria_id: 3
  Item.create nome_ptbr: 'The Virgins', categoria_id: 3
  Item.create nome_ptbr: 'The Waifs', categoria_id: 3
  Item.create nome_ptbr: 'The Wanted', categoria_id: 3
  Item.create nome_ptbr: 'The Wanted EP', categoria_id: 3
  Item.create nome_ptbr: 'The War On Drugs', categoria_id: 3
  Item.create nome_ptbr: 'The Way Way Back', categoria_id: 3
  Item.create nome_ptbr: 'The Weeknd', categoria_id: 3
  Item.create nome_ptbr: 'The White Room', categoria_id: 3
  Item.create nome_ptbr: 'The White Stripes', categoria_id: 3
  Item.create nome_ptbr: 'The Whitlams', categoria_id: 3
  Item.create nome_ptbr: 'The Wiggles', categoria_id: 3
  Item.create nome_ptbr: 'The Wolfe Brothers', categoria_id: 3
  Item.create nome_ptbr: 'The Wombats', categoria_id: 3
  Item.create nome_ptbr: 'The World\'s End', categoria_id: 3
  Item.create nome_ptbr: 'The Wrights', categoria_id: 3
  Item.create nome_ptbr: 'The X Factor', categoria_id: 3
  Item.create nome_ptbr: 'The Zombie Kids', categoria_id: 3
  Item.create nome_ptbr: 'The Gossi', categoria_id: 3
  Item.create nome_ptbr: 'Them Crooked Vultures', categoria_id: 3
  Item.create nome_ptbr: 'These Kids Wear Crowns', categoria_id: 3
  Item.create nome_ptbr: 'Thirsty Merc', categoria_id: 3
  Item.create nome_ptbr: 'Thirty Seconds To Mars', categoria_id: 3
  Item.create nome_ptbr: 'This Is Hell', categoria_id: 3
  Item.create nome_ptbr: 'Thy Art Is Murder', categoria_id: 3
  Item.create nome_ptbr: 'Tiesto', categoria_id: 3
  Item.create nome_ptbr: 'Tift Merrit', categoria_id: 3
  Item.create nome_ptbr: 'Tila Tequila', categoria_id: 3
  Item.create nome_ptbr: 'Tim Campbell', categoria_id: 3
  Item.create nome_ptbr: 'Timbaland', categoria_id: 3
  Item.create nome_ptbr: 'Timomatic', categoria_id: 3
  Item.create nome_ptbr: 'Tin Alley', categoria_id: 3
  Item.create nome_ptbr: 'Tina Arena', categoria_id: 3
  Item.create nome_ptbr: 'Tina Cousins', categoria_id: 3
  Item.create nome_ptbr: 'Tinie Tempah', categoria_id: 3
  Item.create nome_ptbr: 'Tinted Windows', categoria_id: 3
  Item.create nome_ptbr: 'Titanium', categoria_id: 3
  Item.create nome_ptbr: 'Toby Keith', categoria_id: 3
  Item.create nome_ptbr: 'Tokyo Hotel', categoria_id: 3
  Item.create nome_ptbr: 'Tom and Angela', categoria_id: 3
  Item.create nome_ptbr: 'Tommy Emmanuel & Damien Leith', categoria_id: 3
  Item.create nome_ptbr: 'Tommy Lee', categoria_id: 3
  Item.create nome_ptbr: 'Tommy Santee Klaws', categoria_id: 3
  Item.create nome_ptbr: 'Tommy Sparks', categoria_id: 3
  Item.create nome_ptbr: 'Tomorrow When The War Began', categoria_id: 3
  Item.create nome_ptbr: 'Tonight Alive', categoria_id: 3
  Item.create nome_ptbr: 'Tool', categoria_id: 3
  Item.create nome_ptbr: 'Tori Amos', categoria_id: 3
  Item.create nome_ptbr: 'Train', categoria_id: 3
  Item.create nome_ptbr: 'Transformers Dark Of The Moon', categoria_id: 3
  Item.create nome_ptbr: 'Travie McCoy', categoria_id: 3
  Item.create nome_ptbr: 'Trey Songz', categoria_id: 3
  Item.create nome_ptbr: 'Trial Kennedy', categoria_id: 3
  Item.create nome_ptbr: 'Trivium', categoria_id: 3
  Item.create nome_ptbr: 'Tron', categoria_id: 3
  Item.create nome_ptbr: 'Troy Cassar-Daley And Adam Harvey', categoria_id: 3
  Item.create nome_ptbr: 'Tumbleweed', categoria_id: 3
  Item.create nome_ptbr: 'TV Rock', categoria_id: 3
  Item.create nome_ptbr: 'TV Week Logie Awards', categoria_id: 3
  Item.create nome_ptbr: 'TV Week Logies Awards', categoria_id: 3
  Item.create nome_ptbr: 'Twiggy', categoria_id: 3
  Item.create nome_ptbr: 'Twilight', categoria_id: 3
  Item.create nome_ptbr: 'Two Door Cinema Club', categoria_id: 3
  Item.create nome_ptbr: 'Tyler James', categoria_id: 3
  Item.create nome_ptbr: 'Tyler Creator', categoria_id: 3
  Item.create nome_ptbr: 'Tyree', categoria_id: 3
  Item.create nome_ptbr: 'Tyrone Noonan', categoria_id: 3
  Item.create nome_ptbr: 'TZU', categoria_id: 3
  Item.create nome_ptbr: 'U2', categoria_id: 3
  Item.create nome_ptbr: 'Uh Huh Her', categoria_id: 3
  Item.create nome_ptbr: 'Universal Sony Pictures Home Entertainment', categoria_id: 3
  Item.create nome_ptbr: 'Unwritten Law', categoria_id: 3
  Item.create nome_ptbr: 'Usher', categoria_id: 3
  Item.create nome_ptbr: 'Valient Thorr', categoria_id: 3
  Item.create nome_ptbr: 'Vandalism', categoria_id: 3
  Item.create nome_ptbr: 'Vanessa Amorosi', categoria_id: 3
  Item.create nome_ptbr: 'Vanessa Hudgens', categoria_id: 3
  Item.create nome_ptbr: 'Vanna', categoria_id: 3
  Item.create nome_ptbr: 'Various', categoria_id: 3
  Item.create nome_ptbr: 'Various Artists', categoria_id: 3
  Item.create nome_ptbr: 'Velvet Revolver', categoria_id: 3
  Item.create nome_ptbr: 'VHS or Beta', categoria_id: 3
  Item.create nome_ptbr: 'Violent Soho', categoria_id: 3
  Item.create nome_ptbr: 'Visit California', categoria_id: 3
  Item.create nome_ptbr: 'Volbeat', categoria_id: 3
  Item.create nome_ptbr: 'Volcano Choir', categoria_id: 3
  Item.create nome_ptbr: 'Vydamo', categoria_id: 3
  Item.create nome_ptbr: 'Waka Flocka', categoria_id: 3
  Item.create nome_ptbr: 'Wale', categoria_id: 3
  Item.create nome_ptbr: 'Wallpaper', categoria_id: 3
  Item.create nome_ptbr: 'Warpaint', categoria_id: 3
  Item.create nome_ptbr: 'Warrior\'s Way', categoria_id: 3
  Item.create nome_ptbr: 'Washington', categoria_id: 3
  Item.create nome_ptbr: 'We Are The Fury', categoria_id: 3
  Item.create nome_ptbr: 'We The Kings', categoria_id: 3
  Item.create nome_ptbr: 'Weird Al Yankovic', categoria_id: 3
  Item.create nome_ptbr: 'Wendy Matthews', categoria_id: 3
  Item.create nome_ptbr: 'Wes Carr', categoria_id: 3
  Item.create nome_ptbr: 'Westlife', categoria_id: 3
  Item.create nome_ptbr: 'What About Tonight', categoria_id: 3
  Item.create nome_ptbr: 'White Lies', categoria_id: 3
  Item.create nome_ptbr: 'Whitesnake', categoria_id: 3
  Item.create nome_ptbr: 'Whitney Houston', categoria_id: 3
  Item.create nome_ptbr: 'Wiley', categoria_id: 3
  Item.create nome_ptbr: 'Will Smith', categoria_id: 3
  Item.create nome_ptbr: 'Will.I.Am', categoria_id: 3
  Item.create nome_ptbr: 'Willow Smith', categoria_id: 3
  Item.create nome_ptbr: 'Windows Phone 7', categoria_id: 3
  Item.create nome_ptbr: 'Wiz Khalifa', categoria_id: 3
  Item.create nome_ptbr: 'Wiz Khalifa & Snoop Dogg', categoria_id: 3
  Item.create nome_ptbr: 'Woe Is Me', categoria_id: 3
  Item.create nome_ptbr: 'Wolfgang', categoria_id: 3
  Item.create nome_ptbr: 'Wolfmother', categoria_id: 3
  Item.create nome_ptbr: 'Wyclef Jean', categoria_id: 3
  Item.create nome_ptbr: 'Wynter Gordon', categoria_id: 3
  Item.create nome_ptbr: 'Xavier Rudd', categoria_id: 3
  Item.create nome_ptbr: 'Xmas CD Giveaway', categoria_id: 3
  Item.create nome_ptbr: 'Ya Boy', categoria_id: 3
  Item.create nome_ptbr: 'Yeah Yeah Yeahs', categoria_id: 3
  Item.create nome_ptbr: 'Yeasayer', categoria_id: 3
  Item.create nome_ptbr: 'Yelawolf', categoria_id: 3
  Item.create nome_ptbr: 'Yellowcard', categoria_id: 3
  Item.create nome_ptbr: 'Yiruma', categoria_id: 3
  Item.create nome_ptbr: 'Ylwa', categoria_id: 3
  Item.create nome_ptbr: 'Yolanda Be Cool', categoria_id: 3
  Item.create nome_ptbr: 'You Am I', categoria_id: 3
  Item.create nome_ptbr: 'You Me At Six', categoria_id: 3
  Item.create nome_ptbr: 'Young Divas', categoria_id: 3
  Item.create nome_ptbr: 'Young Magic', categoria_id: 3
  Item.create nome_ptbr: 'Young Men Society', categoria_id: 3
  Item.create nome_ptbr: 'Your Highness', categoria_id: 3
  Item.create nome_ptbr: 'Yourcodenameis:Milo', categoria_id: 3
  Item.create nome_ptbr: 'Youth Group', categoria_id: 3
  Item.create nome_ptbr: 'Yuck', categoria_id: 3
	
	Item.create nome_ptbr: "Warriors Orochi 3 Ultimate", categoria_id: 1
	Item.create nome_ptbr: "Adventure Time: Secret of The Nameless Kingdom", categoria_id: 1
	Item.create nome_ptbr: "Far Cry 4", categoria_id: 1
	Item.create nome_ptbr: "Eiyuu Senki: The World Conquest", categoria_id: 1
	Item.create nome_ptbr: "Rogue Legacy", categoria_id: 1
	Item.create nome_ptbr: "Disney Infinity: Marvel Super Heroes 2.0", categoria_id: 1
	Item.create nome_ptbr: "Skylanders Trap Force", categoria_id: 1
	Item.create nome_ptbr: "Skylanders Trap Team", categoria_id: 1
	Item.create nome_ptbr: "Pac-Man and the Ghostly Adventures 2  ", categoria_id: 1
	Item.create nome_ptbr: "One Piece Unlimited World Red", categoria_id: 1
	Item.create nome_ptbr: "Grid Autosport", categoria_id: 1
	Item.create nome_ptbr: "Naruto Ultimate Ninja Storm Revolution", categoria_id: 1
	Item.create nome_ptbr: "Dynasty Warriors Gundam Reborn", categoria_id: 1
	Item.create nome_ptbr: "Risen 3: Titan Lor", categoria_id: 1
	Item.create nome_ptbr: "Jet Car Stunts", categoria_id: 1
	Item.create nome_ptbr: "Hyper Light Drifter", categoria_id: 1
	Item.create nome_ptbr: "Race the Sun", categoria_id: 1
	Item.create nome_ptbr: "MotoGP 2014", categoria_id: 1
	Item.create nome_ptbr: "Borderlan: The Pre-Sequel", categoria_id: 1
	Item.create nome_ptbr: "Ragnarok Odyssey Ace", categoria_id: 1
	Item.create nome_ptbr: "NAtURAL DOCtRINE", categoria_id: 1
	Item.create nome_ptbr: "Sportsfrien", categoria_id: 1
	Item.create nome_ptbr: "R.B.I. Baseball 14", categoria_id: 1
	Item.create nome_ptbr: "Ranko Tsukigime's Longest Day: Short Peace", categoria_id: 1
	Item.create nome_ptbr: "Dragon Fin Soup", categoria_id: 1
	Item.create nome_ptbr: "Naruto Shippuden: Ultimate Ninja Storm Revolution", categoria_id: 1
	Item.create nome_ptbr: "Diablo 3: Reaper of Souls", categoria_id: 1
	Item.create nome_ptbr: "Hakuoki: Stories of the Shinsengumi", categoria_id: 1
	Item.create nome_ptbr: "How To Train Your Dragon 2", categoria_id: 1
	Item.create nome_ptbr: "Hatsune Miku Project DIVA F", categoria_id: 1
	Item.create nome_ptbr: "Tiny Troopers Joint Ops", categoria_id: 1
	Item.create nome_ptbr: "Abyss Odyssey", categoria_id: 1
	Item.create nome_ptbr: "2014 FIFA World Cup Brazil", categoria_id: 1
	Item.create nome_ptbr: "Cabela's Big Game Hunter: Pro Hunts ", categoria_id: 1
	Item.create nome_ptbr: "Persona 4 Arena Ultimax", categoria_id: 1
	Item.create nome_ptbr: "LEGO The Hobbit", categoria_id: 1
	Item.create nome_ptbr: "Solid", categoria_id: 1
	Item.create nome_ptbr: "Transformers: Rise of the Dark Spark ", categoria_id: 1
	Item.create nome_ptbr: "MLB 14 The Show", categoria_id: 1
	Item.create nome_ptbr: "Invizimals: The Lost Kingdom", categoria_id: 1
	Item.create nome_ptbr: "Dynasty Warriors 8: Xtreme Legen Complete Edition", categoria_id: 1
	Item.create nome_ptbr: "Assassin's Creed Freedom Cry", categoria_id: 1
	Item.create nome_ptbr: "Dustforce", categoria_id: 1
	Item.create nome_ptbr: "EA Sports 2014 FIFA World Cup Brazil", categoria_id: 1
	Item.create nome_ptbr: "Sniper Elite 3", categoria_id: 1
	Item.create nome_ptbr: "Hover: The Revolt of Gamers", categoria_id: 1
	Item.create nome_ptbr: "Ethan Meteor Hunter", categoria_id: 1
	Item.create nome_ptbr: "Ace Combat Infinity", categoria_id: 1
	Item.create nome_ptbr: "Avalanche 2: Super Avalanche", categoria_id: 1
	Item.create nome_ptbr: "Blood of the Werewolf", categoria_id: 1
	Item.create nome_ptbr: "5-Star Wrestling", categoria_id: 1
	Item.create nome_ptbr: "Deception 4: Blood Ties", categoria_id: 1
	Item.create nome_ptbr: "Solid", categoria_id: 1
	Item.create nome_ptbr: "Adam's Venture Chronicles", categoria_id: 1
	Item.create nome_ptbr: "Tales of Xillia 2", categoria_id: 1
	Item.create nome_ptbr: "Far Cry Compilation", categoria_id: 1
	Item.create nome_ptbr: "Alien: Isolation ", categoria_id: 1
	Item.create nome_ptbr: "Ultra Street Fighter 4", categoria_id: 1
	Item.create nome_ptbr: "Persona 5", categoria_id: 1
	Item.create nome_ptbr: "Helldivers", categoria_id: 1
	Item.create nome_ptbr: "Middle-earth: Shadow Of Mordor", categoria_id: 1
	Item.create nome_ptbr: "Soul Calibur: Lost Swor", categoria_id: 1
	Item.create nome_ptbr: "A-Men 2", categoria_id: 1
	Item.create nome_ptbr: "Ben 10 Omniverse 2", categoria_id: 1
	Item.create nome_ptbr: "BlazBlue: Chrono Phantasma", categoria_id: 1
	Item.create nome_ptbr: "Metal Gear Solid V: Ground Zeroes ", categoria_id: 1
	Item.create nome_ptbr: "Solid", categoria_id: 1
	Item.create nome_ptbr: "The Walking Dead - Season Two", categoria_id: 1
	Item.create nome_ptbr: "Final Exam", categoria_id: 1
	Item.create nome_ptbr: "Assassin's Creed Liberation HD", categoria_id: 1
	Item.create nome_ptbr: "Atelier Escha & Logy Alchemists of the Dusk Sky", categoria_id: 1
	Item.create nome_ptbr: "Soul Calibur 2 HD Online", categoria_id: 1
	Item.create nome_ptbr: "Mugen Souls Z", categoria_id: 1
	Item.create nome_ptbr: "Troubled", categoria_id: 1
	Item.create nome_ptbr: "Shadow of The Beast", categoria_id: 1
	Item.create nome_ptbr: "Guilty Gear Xrd Sign", categoria_id: 1
	Item.create nome_ptbr: "Nascar 14", categoria_id: 1
	Item.create nome_ptbr: "Solid", categoria_id: 1
	Item.create nome_ptbr: "Slender: The Arrival", categoria_id: 1
	Item.create nome_ptbr: "Alien Rage", categoria_id: 1
	Item.create nome_ptbr: "Rugby League Live 2 - World Cup Edition", categoria_id: 1
	Item.create nome_ptbr: "Cabela's African Adventures", categoria_id: 1
	Item.create nome_ptbr: "Amazing Spider-Man 2", categoria_id: 1
	Item.create nome_ptbr: "AquaPazza", categoria_id: 1
	Item.create nome_ptbr: "Orc Attack: Flatulent Rebellion", categoria_id: 1
	Item.create nome_ptbr: "Drakengard 3", categoria_id: 1
	Item.create nome_ptbr: "Rocksmith 2014", categoria_id: 1
	Item.create nome_ptbr: "Hohokum", categoria_id: 1
	Item.create nome_ptbr: "Dragon Ball Z: Battle of Z", categoria_id: 1
	Item.create nome_ptbr: "Child of Light ", categoria_id: 1
	Item.create nome_ptbr: "XCOM: Enemy Within", categoria_id: 1
	Item.create nome_ptbr: "Dying Light", categoria_id: 1
	Item.create nome_ptbr: "Air Conflicts: Vietnam", categoria_id: 1
	Item.create nome_ptbr: "Narco Terror", categoria_id: 1
	Item.create nome_ptbr: "SpongeBob SquarePants: Plankton's Robotic Revenge  ", categoria_id: 1
	Item.create nome_ptbr: "Strider", categoria_id: 1
	Item.create nome_ptbr: "The LEGO Movie Videogame ", categoria_id: 1
	Item.create nome_ptbr: "Ultra Street Fighter IV ", categoria_id: 1
	Item.create nome_ptbr: "F1 2013", categoria_id: 1
	Item.create nome_ptbr: "NBA 2K14", categoria_id: 1
	# ...
	# http://www.gamesradar.com/ps3/games/?page=6
	#
	#
	#
	Item.create nome_ptbr: "Adeus a Tudo Isso", categoria_id: 2
	Item.create nome_ptbr: "Admirável Mundo Novo", categoria_id: 2
	Item.create nome_ptbr: "Aecio Neves", categoria_id: 2
	Item.create nome_ptbr: "Alice no País das Maravilhas", categoria_id: 2
	Item.create nome_ptbr: "Almas da Gente Negra, As, W. E. B. Du Bois", categoria_id: 2
	Item.create nome_ptbr: "Anarquistas Graças a Deus,", categoria_id: 2
	Item.create nome_ptbr: "Anna Karenina, Lev Tolstoi", categoria_id: 2
	Item.create nome_ptbr: "Arte de Enganar, A,", categoria_id: 2
	Item.create nome_ptbr: "Arte de Furtar, autoria discutida, século XVII", categoria_id: 2
	Item.create nome_ptbr: "Arte da Prudência, A", categoria_id: 2
	Item.create nome_ptbr: "Assunção do editor literário, A,", categoria_id: 2
	Item.create nome_ptbr: "Astronomia Nova", categoria_id: 2
	Item.create nome_ptbr: "Autobiografia de Malcolm X, A, Alex Haley e Malcolm X", categoria_id: 2
	Item.create nome_ptbr: "Aventuras de Huckleberry Finn, As, Mark Twain", categoria_id: 2
	Item.create nome_ptbr: "O Barão nas Árvores", categoria_id: 2
	Item.create nome_ptbr: "Amado", categoria_id: 2
	Item.create nome_ptbr: "Beira do Abismo, À", categoria_id: 2
	Item.create nome_ptbr: "Bíblia", categoria_id: 2
	Item.create nome_ptbr: "Boas Mulheres da China, As", categoria_id: 2
	Item.create nome_ptbr: "Braços Quebrados", categoria_id: 2
	Item.create nome_ptbr: "Machado", categoria_id: 2
	Item.create nome_ptbr: "Caixa de Confeitos & Contos Sortidos, A,", categoria_id: 2
	Item.create nome_ptbr: "Capricho 43,", categoria_id: 2
	Item.create nome_ptbr: "Cartas a Nelson Algreen", categoria_id: 2
	Item.create nome_ptbr: "Casa do Rio Vermelho, A,", categoria_id: 2
	Item.create nome_ptbr: "Caverna, A,", categoria_id: 2
	Item.create nome_ptbr: "Cem Anos de Solidão,", categoria_id: 2
	Item.create nome_ptbr: "Chão de Meninos,", categoria_id: 2
	Item.create nome_ptbr: "Cimarron,", categoria_id: 2
	Item.create nome_ptbr: "Cittá di Roma,", categoria_id: 2
	Item.create nome_ptbr: "Clô Dias & Noites", categoria_id: 2
	Item.create nome_ptbr: "Códigos de Família", categoria_id: 2
	Item.create nome_ptbr: "Confissões, Santo Agostinho, século IV", categoria_id: 2
	Item.create nome_ptbr: "Confissões de Nat Turner, As", categoria_id: 2
	Item.create nome_ptbr: "Conversão do Diabo, A,", categoria_id: 2
	Item.create nome_ptbr: "Cor Púrpura, A,", categoria_id: 2
	Item.create nome_ptbr: "Coração, Solitário Caçador, Carson McCullers", categoria_id: 2
	Item.create nome_ptbr: "Corre, Coelho, John Updike", categoria_id: 2
	Item.create nome_ptbr: "Crime e Castigo,", categoria_id: 2
	Item.create nome_ptbr: "Crítica da Razão Pura,", categoria_id: 2
	Item.create nome_ptbr: "Crônica de Uma Namorada,", categoria_id: 2
	Item.create nome_ptbr: "Catch 22, Joseph Heller", categoria_id: 2
	Item.create nome_ptbr: "Da Democracia na América, Alexis de Tocqueville", categoria_id: 2
	Item.create nome_ptbr: "Deixados para Trás, ficção", categoria_id: 2
	Item.create nome_ptbr: "Deus das Moscas, O, William Golding", categoria_id: 2
	Item.create nome_ptbr: "Dia dos Gafanhotos, O, Nathanael West", categoria_id: 2
	Item.create nome_ptbr: "Diabo dos Números, Hans Magnus Enzensberger", categoria_id: 2
	Item.create nome_ptbr: "Dicionário do Português Básico,", categoria_id: 2
	Item.create nome_ptbr: "Mário Vilela", categoria_id: 2
	Item.create nome_ptbr: "Discurso do Método, René Descartes", categoria_id: 2
	Item.create nome_ptbr: "Divina Comédia, A, Dante Alighieri", categoria_id: 2
	Item.create nome_ptbr: "Dom Casmurro,", categoria_id: 2
	Item.create nome_ptbr: "Fahrenheit 451,", categoria_id: 2
	Item.create nome_ptbr: "Falar Verdade a Mentir", categoria_id: 2
	Item.create nome_ptbr: "Falcão de Malta, O, Dashiell Hammett", categoria_id: 2
	Item.create nome_ptbr: "Fantasia para dois coronéis e uma piscina", categoria_id: 2
	Item.create nome_ptbr: "Farsa de Inês Pereira", categoria_id: 2
	Item.create nome_ptbr: "Filho Nativo, O, Richard Wright", categoria_id: 2
	Item.create nome_ptbr: "Filhos e Amantes, D. H. Lawrence", categoria_id: 2
	Item.create nome_ptbr: "Finis Patriae", categoria_id: 2
	Item.create nome_ptbr: "Finnegans Wake", categoria_id: 2
	Item.create nome_ptbr: "Flores sem Fruto", categoria_id: 2
	Item.create nome_ptbr: "Fluviais", categoria_id: 2
	Item.create nome_ptbr: "Folhas Caídas", categoria_id: 2
	Item.create nome_ptbr: "Folhas de Erva, Walt Whitman", categoria_id: 2
	Item.create nome_ptbr: "Força das Coisas, A,", categoria_id: 2
	Item.create nome_ptbr: "Fortaleza de Sharpe, A,", categoria_id: 2
	Item.create nome_ptbr: "Frankenstein", categoria_id: 2
	Item.create nome_ptbr: "Frei Luís de Sousa", categoria_id: 2
	#
	# http://pt.wikipedia.org/wiki/Anexo:Lista_de_livros_por_t%C3%ADtulo:_G
	#
	#
	Item.create nome_ptbr: "The Shawshank Redemption", categoria_id: 4
	Item.create nome_ptbr: "The Godfather", categoria_id: 4
	Item.create nome_ptbr: "The Godfather: Part II", categoria_id: 4
	Item.create nome_ptbr: "The Dark Knight", categoria_id: 4
	Item.create nome_ptbr: "Pulp Fiction", categoria_id: 4
	Item.create nome_ptbr: "Il buono, il brutto, il catt", categoria_id: 4
	Item.create nome_ptbr: "Schindler's List", categoria_id: 4
	Item.create nome_ptbr: "12 Angry Men", categoria_id: 4
	Item.create nome_ptbr: "The Lord of the Rings: The Return of the King", categoria_id: 4
	Item.create nome_ptbr: "Fight Club", categoria_id: 4
	Item.create nome_ptbr: "The Lord of the Rings: The Fellowship of the Ring", categoria_id: 4
	Item.create nome_ptbr: "Star Wars: Episode V - The Empire Strikes Back", categoria_id: 4
	Item.create nome_ptbr: "Inception", categoria_id: 4
	Item.create nome_ptbr: "Forrest Gump", categoria_id: 4
	Item.create nome_ptbr: "One Flew Over the Cuckoo's Nest", categoria_id: 4
	Item.create nome_ptbr: "The Lord of the Rings: The Two Towers", categoria_id: 4
	Item.create nome_ptbr: "Goodfellas", categoria_id: 4
	Item.create nome_ptbr: "Star Wars", categoria_id: 4
	Item.create nome_ptbr: "The Matrix", categoria_id: 4
	Item.create nome_ptbr: "Shichinin no samurai", categoria_id: 4
	Item.create nome_ptbr: "Cidade de Deus", categoria_id: 4
	Item.create nome_ptbr: "Se7en", categoria_id: 4
	Item.create nome_ptbr: "The Usual Suspects", categoria_id: 4
	Item.create nome_ptbr: "The Silence of the Lambs", categoria_id: 4
	Item.create nome_ptbr: "C'era una volta il West", categoria_id: 4
	Item.create nome_ptbr: "It's a Wonderful Life", categoria_id: 4
	Item.create nome_ptbr: "Léon", categoria_id: 4
	Item.create nome_ptbr: "Casablanca", categoria_id: 4
	Item.create nome_ptbr: "La vita è bella", categoria_id: 4
	Item.create nome_ptbr: "Raiders of the Lost Ark", categoria_id: 4
	Item.create nome_ptbr: "Rear Window", categoria_id: 4
	Item.create nome_ptbr: "American History X", categoria_id: 4
	Item.create nome_ptbr: "Psycho", categoria_id: 4
	Item.create nome_ptbr: "City Lights", categoria_id: 4
	Item.create nome_ptbr: "Saving Private Ryan", categoria_id: 4
	Item.create nome_ptbr: "Sen to Chihiro no kamikakushi", categoria_id: 4
	Item.create nome_ptbr: "Intouchables", categoria_id: 4
	Item.create nome_ptbr: "Memento", categoria_id: 4
	Item.create nome_ptbr: "Terminator 2: Judgment Day", categoria_id: 4
	Item.create nome_ptbr: "Modern Times", categoria_id: 4
	Item.create nome_ptbr: "Sunset B", categoria_id: 4
	Item.create nome_ptbr: "Strangelove or: How I Learned to Stop Worrying and Love the Bomb", categoria_id: 4
	Item.create nome_ptbr: "The Pianist", categoria_id: 4
	Item.create nome_ptbr: "Apocalypse Now", categoria_id: 4
	Item.create nome_ptbr: "The Green Mile", categoria_id: 4
	Item.create nome_ptbr: "The Departed", categoria_id: 4
	Item.create nome_ptbr: "Gladiator", categoria_id: 4
	Item.create nome_ptbr: "Back to the Future", categoria_id: 4
	Item.create nome_ptbr: "Alien", categoria_id: 4
	Item.create nome_ptbr: "The Dark Knight Rises", categoria_id: 4
	Item.create nome_ptbr: "Django Unchained", categoria_id: 4
	Item.create nome_ptbr: "Das Leben der Anderen", categoria_id: 4
	Item.create nome_ptbr: "The Prestige", categoria_id: 4
	Item.create nome_ptbr: "The Great Dictator", categoria_id: 4
	Item.create nome_ptbr: "The Shining", categoria_id: 4
	Item.create nome_ptbr: "Nuovo Cinema Paradiso", categoria_id: 4
	Item.create nome_ptbr: "The Lion King", categoria_id: 4
	Item.create nome_ptbr: "Paths of Glory", categoria_id: 4
	Item.create nome_ptbr: "American Beauty", categoria_id: 4
	Item.create nome_ptbr: "WALL·E", categoria_id: 4
	Item.create nome_ptbr: "North by Northwest", categoria_id: 4
	Item.create nome_ptbr: "Le fabuleux destin d'Amélie Poulain", categoria_id: 4
	Item.create nome_ptbr: "Citizen Kane", categoria_id: 4
	Item.create nome_ptbr: "Aliens", categoria_id: 4
	Item.create nome_ptbr: "Toy Story 3", categoria_id: 4
	Item.create nome_ptbr: "Vertigo", categoria_id: 4
	Item.create nome_ptbr: "M", categoria_id: 4
	Item.create nome_ptbr: "Das Boot", categoria_id: 4
	Item.create nome_ptbr: "Taxi Driver", categoria_id: 4
	Item.create nome_ptbr: "A Clockwork Orange", categoria_id: 4
	Item.create nome_ptbr: "Oldeuboi", categoria_id: 4
	Item.create nome_ptbr: "Double Indemnity", categoria_id: 4
	Item.create nome_ptbr: "Mononoke-hime", categoria_id: 4
	Item.create nome_ptbr: "Reservoir Dogs", categoria_id: 4
	Item.create nome_ptbr: "To Kill a Mockingbird", categoria_id: 4
	Item.create nome_ptbr: "Once Upon a Time in America", categoria_id: 4
	Item.create nome_ptbr: "Requiem for a Dream", categoria_id: 4
	Item.create nome_ptbr: "Star Wars: Episode VI - Return of the Jedi", categoria_id: 4
	Item.create nome_ptbr: "Braveheart", categoria_id: 4
	Item.create nome_ptbr: "Lawrence of Arabia", categoria_id: 4
	Item.create nome_ptbr: "Hotaru no haka", categoria_id: 4
	Item.create nome_ptbr: "Eternal Sunshine of the Spotless Mind", categoria_id: 4
	Item.create nome_ptbr: "Witness for the Prosecution", categoria_id: 4
	Item.create nome_ptbr: "Full Metal Jacket", categoria_id: 4
	Item.create nome_ptbr: "Singin' in the Rain", categoria_id: 4
	Item.create nome_ptbr: "The Sting", categoria_id: 4
	Item.create nome_ptbr: "Ladri di biciclette", categoria_id: 4
	Item.create nome_ptbr: "Monty Python and the Holy Grail", categoria_id: 4
	Item.create nome_ptbr: "Amadeus", categoria_id: 4
	Item.create nome_ptbr: "All About Eve", categoria_id: 4
	Item.create nome_ptbr: "Sna", categoria_id: 4
	Item.create nome_ptbr: "Rashômon", categoria_id: 4
	Item.create nome_ptbr: "The Treasure of the Sierra Madre", categoria_id: 4
	Item.create nome_ptbr: "Confidential", categoria_id: 4
	Item.create nome_ptbr: "The Apartment", categoria_id: 4
	Item.create nome_ptbr: "Some Like It Hot", categoria_id: 4
	Item.create nome_ptbr: "The Third Man", categoria_id: 4
	Item.create nome_ptbr: "Per qualche dollaro in più", categoria_id: 4
	Item.create nome_ptbr: "Indiana Jones and the Last Crusade", categoria_id: 4
	Item.create nome_ptbr: "Inglourious Basterds", categoria_id: 4
	Item.create nome_ptbr: "Jodaeiye Nader az Simin", categoria_id: 4
	Item.create nome_ptbr: "The Kid", categoria_id: 4
	Item.create nome_ptbr: "2001: A Space Odyssey", categoria_id: 4
	Item.create nome_ptbr: "Batman Begins", categoria_id: 4
	Item.create nome_ptbr: "Yôjinbô", categoria_id: 4
	Item.create nome_ptbr: "Unforgiven", categoria_id: 4
	Item.create nome_ptbr: "Metropolis", categoria_id: 4
	Item.create nome_ptbr: "Raging Bull", categoria_id: 4
	Item.create nome_ptbr: "The Wolf of Wall Street", categoria_id: 4
	Item.create nome_ptbr: "Toy Story", categoria_id: 4
	Item.create nome_ptbr: "Chinatown", categoria_id: 4
	Item.create nome_ptbr: "Scarface", categoria_id: 4
	Item.create nome_ptbr: "Up", categoria_id: 4
	Item.create nome_ptbr: "Die Hard", categoria_id: 4
	Item.create nome_ptbr: "Der Untergang", categoria_id: 4
	Item.create nome_ptbr: "The Great Escape", categoria_id: 4
	Item.create nome_ptbr: "Smith Goes to Washington", categoria_id: 4
	Item.create nome_ptbr: "El laberinto del fauno", categoria_id: 4
	Item.create nome_ptbr: "On the Waterfront", categoria_id: 4
	Item.create nome_ptbr: "Taare Zameen Par", categoria_id: 4
	Item.create nome_ptbr: "The Bridge on the River Kwai", categoria_id: 4
	Item.create nome_ptbr: "The Grand Budapest Hotel", categoria_id: 4
	Item.create nome_ptbr: "Heat", categoria_id: 4
	Item.create nome_ptbr: "Jagten", categoria_id: 4
	Item.create nome_ptbr: "3 Idiots", categoria_id: 4
	Item.create nome_ptbr: "Det sjunde inseglet", categoria_id: 4
	Item.create nome_ptbr: "Smultronstället", categoria_id: 4
	Item.create nome_ptbr: "The Elephant Man", categoria_id: 4
	Item.create nome_ptbr: "Ikiru", categoria_id: 4
	Item.create nome_ptbr: "Ran", categoria_id: 4
	Item.create nome_ptbr: "The General", categoria_id: 4
	Item.create nome_ptbr: "Tonari no Totoro", categoria_id: 4
	Item.create nome_ptbr: "Blade Runner", categoria_id: 4
	Item.create nome_ptbr: "The Gold Rush", categoria_id: 4
	Item.create nome_ptbr: "Lock, Stock and Two Smoking Barrels", categoria_id: 4
	Item.create nome_ptbr: "Good Will Hunting", categoria_id: 4
	Item.create nome_ptbr: "Gran Torino", categoria_id: 4
	Item.create nome_ptbr: "Rebecca", categoria_id: 4
	Item.create nome_ptbr: "The Big Lebowski", categoria_id: 4
	Item.create nome_ptbr: "El secreto de sus ojos", categoria_id: 4
	Item.create nome_ptbr: "It Happened One Night", categoria_id: 4
	Item.create nome_ptbr: "Casino", categoria_id: 4
	Item.create nome_ptbr: "Warrior", categoria_id: 4
	Item.create nome_ptbr: "Rush", categoria_id: 4
	Item.create nome_ptbr: "12 Years a Slave", categoria_id: 4
	Item.create nome_ptbr: "V for Vendetta", categoria_id: 4
	Item.create nome_ptbr: "The Deer Hunter", categoria_id: 4
	Item.create nome_ptbr: "Cool Hand Luke", categoria_id: 4
	Item.create nome_ptbr: "Fargo", categoria_id: 4
	Item.create nome_ptbr: "Rang De Basanti", categoria_id: 4
	Item.create nome_ptbr: "The Maltese Falcon", categoria_id: 4
	Item.create nome_ptbr: "Gone with the Wind", categoria_id: 4
	Item.create nome_ptbr: "Hauru no ugoku shiro", categoria_id: 4
	Item.create nome_ptbr: "Trainspotting", categoria_id: 4
	Item.create nome_ptbr: "Into the Wild", categoria_id: 4
	Item.create nome_ptbr: "How to Train Your Dragon", categoria_id: 4
	Item.create nome_ptbr: "Hotel Rwanda", categoria_id: 4
	Item.create nome_ptbr: "The Sixth Sense", categoria_id: 4
	Item.create nome_ptbr: "Judgment at Nuremberg", categoria_id: 4
	Item.create nome_ptbr: "Butch Cassidy and the Sundance Kid", categoria_id: 4
	Item.create nome_ptbr: "The Thing", categoria_id: 4
	Item.create nome_ptbr: "A Beautiful Mind", categoria_id: 4
	Item.create nome_ptbr: "Dial M for Murder", categoria_id: 4
	Item.create nome_ptbr: "Platoon", categoria_id: 4
	Item.create nome_ptbr: "Kill Bill: 1", categoria_id: 4
	Item.create nome_ptbr: "No Country for Old Men", categoria_id: 4
	Item.create nome_ptbr: "Annie Hall", categoria_id: 4
	Item.create nome_ptbr: "Finding Nemo", categoria_id: 4
	Item.create nome_ptbr: "Mary and Max", categoria_id: 4
	Item.create nome_ptbr: "Sin City", categoria_id: 4
	Item.create nome_ptbr: "Life of Brian", categoria_id: 4
	Item.create nome_ptbr: "Her", categoria_id: 4
	Item.create nome_ptbr: "Touch of Evil", categoria_id: 4
	Item.create nome_ptbr: "Les diaboliques", categoria_id: 4
	Item.create nome_ptbr: "Network", categoria_id: 4
	Item.create nome_ptbr: "The Princess Bride", categoria_id: 4
	Item.create nome_ptbr: "Stand by Me", categoria_id: 4
	Item.create nome_ptbr: "Amores perros", categoria_id: 4
	Item.create nome_ptbr: "The Wizard of Oz", categoria_id: 4
	Item.create nome_ptbr: "The Avengers", categoria_id: 4
	Item.create nome_ptbr: "Incendies", categoria_id: 4
	Item.create nome_ptbr: "Ben-Hur", categoria_id: 4
	Item.create nome_ptbr: "There Will Be Blood", categoria_id: 4
	Item.create nome_ptbr: "The Grapes of Wrath", categoria_id: 4
	Item.create nome_ptbr: "Les quatre cents coups", categoria_id: 4
	Item.create nome_ptbr: "Million Dollar Baby", categoria_id: 4
	Item.create nome_ptbr: "The Best Years of Our Lives", categoria_id: 4
	Item.create nome_ptbr: "Hachi: A Dog's Tale", categoria_id: 4
	Item.create nome_ptbr: "8½", categoria_id: 4
	Item.create nome_ptbr: "In the Name of the Father", categoria_id: 4
	Item.create nome_ptbr: "Donnie Darko", categoria_id: 4
	Item.create nome_ptbr: "The Bourne Ultimatum", categoria_id: 4
	Item.create nome_ptbr: "Strangers on a Train", categoria_id: 4
	Item.create nome_ptbr: "Persona", categoria_id: 4
	Item.create nome_ptbr: "Gandhi", categoria_id: 4
	Item.create nome_ptbr: "High Noon", categoria_id: 4
	Item.create nome_ptbr: "The King's Speech", categoria_id: 4
	Item.create nome_ptbr: "Notorious", categoria_id: 4
	Item.create nome_ptbr: "Jaws", categoria_id: 4
	Item.create nome_ptbr: "Mou gaan dou", categoria_id: 4
	Item.create nome_ptbr: "Kaze no tani no Naushika", categoria_id: 4
	Item.create nome_ptbr: "Twelve Monkeys", categoria_id: 4
	Item.create nome_ptbr: "Fanny och Alexander", categoria_id: 4
	Item.create nome_ptbr: "The Terminator", categoria_id: 4
	Item.create nome_ptbr: "Captain America: The Winter Soldier", categoria_id: 4
	Item.create nome_ptbr: "Lagaan: Once Upon a Time in India", categoria_id: 4
	Item.create nome_ptbr: "Yip Man", categoria_id: 4
	Item.create nome_ptbr: "La strada", categoria_id: 4
	Item.create nome_ptbr: "The Night of the Hunter", categoria_id: 4
	Item.create nome_ptbr: "Stalker", categoria_id: 4
	Item.create nome_ptbr: "Groundhog Day", categoria_id: 4
	Item.create nome_ptbr: "Gravity", categoria_id: 4
	Item.create nome_ptbr: "Harry Potter and the Deathly Hallows: Part 2", categoria_id: 4
	Item.create nome_ptbr: "Who's Afraid of Virginia Woolf?", categoria_id: 4
	Item.create nome_ptbr: "Rocky", categoria_id: 4
	Item.create nome_ptbr: "Dog Day Afternoon", categoria_id: 4
	Item.create nome_ptbr: "The Big Sleep", categoria_id: 4
	Item.create nome_ptbr: "La haine", categoria_id: 4
	Item.create nome_ptbr: "La battaglia di Algeri", categoria_id: 4
	Item.create nome_ptbr: "Shutter Island", categoria_id: 4
	Item.create nome_ptbr: "Pirates of the Caribbean: The Curse of the Black Pearl", categoria_id: 4
	Item.create nome_ptbr: "Barry Lyndon", categoria_id: 4
	Item.create nome_ptbr: "Before Sunrise", categoria_id: 4
	Item.create nome_ptbr: "Monsters, ", categoria_id: 4
	Item.create nome_ptbr: "The Graduate", categoria_id: 4
	Item.create nome_ptbr: "The Hustler", categoria_id: 4
	Item.create nome_ptbr: "Festen", categoria_id: 4
	Item.create nome_ptbr: "The Lego Movie", categoria_id: 4
	Item.create nome_ptbr: "Tenkû no shiro Rapyuta", categoria_id: 4
	Item.create nome_ptbr: "Salinui chueok", categoria_id: 4
	Item.create nome_ptbr: "Roman Holiday", categoria_id: 4
	Item.create nome_ptbr: "Per un pugno di dollari", categoria_id: 4
	Item.create nome_ptbr: "The Help", categoria_id: 4
	Item.create nome_ptbr: "A Christmas Story", categoria_id: 4
	Item.create nome_ptbr: "Fa yeung nin wa", categoria_id: 4
	Item.create nome_ptbr: "Stalag 17", categoria_id: 4
	Item.create nome_ptbr: "Slumdog Millionaire", categoria_id: 4
	Item.create nome_ptbr: "Swades: We, the People", categoria_id: 4
	Item.create nome_ptbr: "Underground", categoria_id: 4
	Item.create nome_ptbr: "The Truman Show", categoria_id: 4
	Item.create nome_ptbr: "The Killing", categoria_id: 4
	Item.create nome_ptbr: "Rope", categoria_id: 4
	Item.create nome_ptbr: "Tropa de Elite 2 - O Inimigo Agora É Outro", categoria_id: 4
	Item.create nome_ptbr: "Black Swan", categoria_id: 4
	Item.create nome_ptbr: "Beauty and the Beast", categoria_id: 4
	Item.create nome_ptbr: "Trois couleurs: Rouge", categoria_id: 4
	Item.create nome_ptbr: "Le scaphandre et le papillon", categoria_id: 4
	Item.create nome_ptbr: "Jurassic Park", categoria_id: 4
	Item.create nome_ptbr: "La dolce vita", categoria_id: 4
	Item.create nome_ptbr: "Blood Diamond", categoria_id: 4

	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	require 'uri'

	def remover_acentos(texto)
    return texto if texto.blank?
    texto = texto.gsub(/(á|à|ã|â|ä)/, 'a').gsub(/(é|è|ê|ë)/, 'e').gsub(/(í|ì|î|ï)/, 'i').gsub(/(ó|ò|õ|ô|ö)/, 'o').gsub(/(ú|ù|û|ü)/, 'u')
    texto = texto.gsub(/(Á|À|Ã|Â|Ä)/, 'A').gsub(/(É|È|Ê|Ë)/, 'E').gsub(/(Í|Ì|Î|Ï)/, 'I').gsub(/(Ó|Ò|Õ|Ô|Ö)/, 'O').gsub(/(Ú|Ù|Û|Ü)/, 'U')
    texto = texto.gsub(/·/, ' ')
    texto = texto.gsub(/ñ/, 'n').gsub(/Ñ/, 'N')
    texto = texto.gsub(/ç/, 'c').gsub(/Ç/, 'C')
    texto
  end


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

# Randomização

pg = Random.new(50)

1000.times do |i|
	name = Faker::Name.first_name
	pass = Faker::Internet.password(8)
  Usuario.create( primeiro_nome: name,
							    ultimo_nome: Faker::Name.last_name,
							    username: Faker::Internet.user_name(name),
							    dt_aniversario: pg.rand(10...50).years.ago,
							    sexo: ['S', 'N'].shuffle.first,
							    email: Faker::Internet.email,
							    password_digest: nil,
							    password: pass,
							    password_confirmation: pass, 
							    admin: false,
							    remember_token: nil,
							    provider: nil,
							    uid: nil,
							    oauth_token: nil,
							    oauth_expires_at: nil,
							    image: nil)
end

item_all = Item.all.size
pg = Random.new(item_all)

4.times do |i|
	Usuario.all.each do |i|
		begin
		  Avaliacao.create( item_id: pg.rand(0...item_all),
												usuario_id: i.id,
												avaliacao: [true, true, true, false].shuffle.first )
		rescue Exception => e
		end
	end
end

item_all = Item.all.size
pg = Random.new(item_all)

6.times do |i|
	Usuario.all.each do |i|
		begin
		  Comentario.create( item_id: pg.rand(0...item_all),
												 usuario_id: i.id,
												 comentario: Faker::Lorem.paragraph )
		rescue Exception => e
		end
	end
end

item_all = Item.all.count
genero_all = Genero.all.count
pg = Random.new(item_all)
gg = Random.new(genero_all)

1000.times do |i|
	begin
	  Generalizacao.create( item_id: pg.rand(0...item_all),
													genero_id: gg.rand(0...genero_all))
	rescue Exception => e
	end
end

Avaliacao.all.each { |a| a.destroy if a.usuario.nil? or a.item.nil?}
Generalizacao.all.each { |g| g.destroy if g.item.nil? or g.genero.nil? }

