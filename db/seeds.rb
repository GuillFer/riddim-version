# puts "Cleaning database..."
# Artist.destroy_all
# Riddim.destroy_all
# Song.destroy_all
# SongArtist.destroy_all

# puts "Adding Artists..."

# paragons = Artist.create(name: "The Paragons")
# skatalites = Artist.create(name: "The Skatalites")
# jackiemittoo = Artist.create(name: "Jackie Mittoo")
# heptones = Artist.create(name: "The Heptones")
# horaceandy = Artist.create(name: "Horace Andy")
# sugarminott = Artist.create(name: "Sugar Minott")
# augustuspablo = Artist.create(name: "Augustus Pablo")
# bababrooks = Artist.create(name: "Baba Brooks")
# johnnyosbourne = Artist.create(name: "Johnny Osbourne")
# waynesmith = Artist.create(name: "Wayne Smith")
# abyssinians = Artist.create(name: "The Abyssinians")
# sounddimension = Artist.create(name: "Sound Dimension")
# soulvendors = Artist.create(name: "The Soul Vendors")
# altonellis = Artist.create(name: "Alton Ellis")
# dennisbrown = Artist.create(name: "Dennis Brown")
# eekamouse = Artist.create(name: "Eek A Mouse")
# alcampbell = Artist.create(name: "Al Campbell")
# jamaicans = Artist.create(name: "The Jamaicans")
# eternals = Artist.create(name: "The Eternals")
# cornellcampbell = Artist.create(name: "Cornell Campbell")
# lloydrobinson = Artist.create(name: "Lloyd Robinson")


# puts "Adding Riddims..."

# prettylooksriddim = Riddim.create(title: "Pretty Looks")
# drumsongriddim = Riddim.create(title: "Drum Song")
# javariddim = Riddim.create(title: "Java")
# shankisheckriddim = Riddim.create(title: "Shank I Sheck")
# vanityriddim = Riddim.create(title: "Vanity")
# mrbassieriddim = Riddim.create(title: "Mr Bassie")
# takearideriddim = Riddim.create(title: "Take a Ride")
# pleasebetrueriddim = Riddim.create(title: "Please Be True")
# cusscussriddim = Riddim.create(title: "Cuss Cuss")
# skylarkingriddim = Riddim.create(title: "Skylarking")
# realrockriddim = Riddim.create(title: "Real Rock")
# swingeasyriddim = Riddim.create(title: "Swing Easy")
# sattariddim = Riddim.create(title: "Satta")
# stalagriddim = Riddim.create(title: "Stalag")
# slengtengriddim = Riddim.create(title: "Sleng Teng")
# queenoftheminstrelriddim = Riddim.create(title: "Queen of the Minstrel")
# bababoomriddim = Riddim.create(title: "Ba Ba Boom")


# puts "Adding Songs..."

# prettylooks = Song.create(title: "Pretty Looks isn't all", riddim_id: 1, original: true)
# sa1 = SongArtist.create(artist_id: 4, song_id: prettylooks)

# takearide = Song.create(title: "Take a Ride", riddim_id: 7, original: true, year: 1968)
# sa22 = SongArtist.create(artist_id: 17, song_id: takearide)

# drumsong = Song.create(title: "Drum Song", riddim_id: 2, original: true)
# sa2 = SongArtist.create(artist_id: 3, song_id: drumsong)

# java = Song.create(title: "Java", riddim_id: 3, original: true, year: 1971)
# sa23 = SongArtist.create(artist_id: 7, song_id: java)

# shankisheck = Song.create(title: "Shank I Sheck", riddim_id: 4, original: true)
# sa24 = SongArtist.create(artist_id: 8, song_id: shankisheck)

# bababoom = Song.create(title: "Ba Ba Boom", riddim_id: 17, original: true)
# sa25 = SongArtist.create(artist_id: 18, song_id: bababoom)

# mrbassie = Song.create(title: "Mr Bassie", riddim_id: 6, original: true)
# sa26 = SongArtist.create(artist_id: 5, song_id: mrbassie)

# swingeasy = Song.create(title: "Swing Easy", riddim_id: 12, original: true)
# sa27 = SongArtist.create(artist_id: 13, song_id: swingeasy)

# cantbuylove = Song.create(title: "Can't Buy Love", riddim_id: 12, original: false, year: 1979)
# sa20 = SongArtist.create(artist_id: 9, song_id: cantbuylove)

# cusscuss = Song.create(title: "Cuss Cuss", riddim_id: 9, original: true)
# sa10 = SongArtist.create(artist_id: 21, song_id: cusscuss)

# skylarking = Song.create(title: "Skylarking", riddim_id: 10, original: true)
# sa11 = SongArtist.create(artist_id: 5, song_id: skylarking)

# imjustaguy = Song.create(title: "I'm Just a Guy", riddim_id: 5, original: true)
# sa7 = SongArtist.create(artist_id: 14, song_id: imjustaguy)

# vanity = Song.create(title: "Vanity", riddim_id: 5, original: false)
# sa8 = SongArtist.create(artist_id: 6, song_id: vanity)

# realrock = Song.create(title: "Real Rock", riddim_id: 11, original: true)
# sa12 = SongArtist.create(artist_id: 12, song_id: realrock)

# satta = Song.create(title: "Satta Massagana", riddim_id: 13, original: true)
# sa6 = SongArtist.create(artist_id: 11, song_id: satta)

# slengteng = Song.create(title: "Sleng Teng", riddim_id: 15, original: true)
# sa14 = SongArtist.create(artist_id: 10, song_id: slengteng)

# queenoftheminstrel = Song.create(title: "Queen of the Minstrel", riddim_id: 16, original: true)
# sa15 = SongArtist.create(artist_id: 21, song_id: queenoftheminstrel)
# sa21 = SongArtist.create(artist_id: 19, song_id: queenoftheminstrel)

# truthandrights = Song.create(title: "Truth and Rights", riddim_id: 7, original: false, year: 1979)
# sa9 = SongArtist.create(artist_id: 9, song_id: truthandrights)

# bababoom2 = Song.create(title: "Ba Ba Boom", riddim_id: 17, original: false)
# sa4 = SongArtist.create(artist_id: 3, song_id: bababoom2)
# sa5 = SongArtist.create(artist_id: 13, song_id: bababoom2)
