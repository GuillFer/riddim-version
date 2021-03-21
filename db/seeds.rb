puts "Adding Artists..."

paragons = Artist.create(name: "The Paragons")
skatalites = Artist.create(name: "The Skatalites")
jackiemittoo = Artist.create(name: "Jackie Mittoo")
heptones = Artist.create(name: "The Heptones")
horaceandy = Artist.create(name: "Horace Andy")
sugarminott = Artist.create(name: "Sugar Minott")
augustuspablo = Artist.create(name: "Augustus Pablo")
bababrooks = Artist.create(name: "Baba Brooks")
johnnyosbourne = Artist.create(name: "Johnny Osbourne")
waynesmith = Artist.create(name: "Wayne Smith")
abyssinians = Artist.create(name: "The Abyssinians")
sounddimension = Artist.create(name: "Sound Dimension")
soulvendors = Artist.create(name: "The Soul Vendors")
altonellis = Artist.create(name: "Alton Ellis")
dennisbrown = Artist.create(name: "Dennis Brown")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
skatalites = Artist.create(name: "")
alcampbell = Artist.create(name: "Al Campbell")
jamaicans = Artist.create(name: "The Jamaicans")
eternals = Artist.create(name: "The Eternals")
cornellcampbell = Artist.create(name: "Cornell Campbell")
lloydrobinson = Artist.create(name: "Lloyd Robinson")


puts "Adding Riddims..."

prettylooksriddim = Riddim.create(title: "Pretty Looks")
drumsongriddim = Riddim.create(title: "Drum Song")
javariddim = Riddim.create(title: "Java")
shankisheckriddim = Riddim.create(title: "Shank I Sheck")
vanityriddim = Riddim.create(title: "Vanity")
mrbassieriddim = Riddim.create(title: "Mr Bassie")
takearideriddim = Riddim.create(title: "Take a Ride")
pleasebetrueriddim = Riddim.create(title: "Please Be True")
cusscussriddim = Riddim.create(title: "Cuss Cuss")
skylarkingriddim = Riddim.create(title: "Skylarking")
realrockriddim = Riddim.create(title: "Real Rock")
swingeasyriddim = Riddim.create(title: "Swing Easy")
sattariddim = Riddim.create(title: "Satta")
stalagriddim = Riddim.create(title: "Stalag")
slengtengriddim = Riddim.create(title: "Sleng Teng")
queenoftheminstrelriddim = Riddim.create(title: "Queen of the Minstrel")
bababoomriddim = Riddim.create(title: "Ba Ba Boom")


puts "Adding Songs..."

prettylooks = Song.create(title: "Pretty Looks isn't all", riddim: prettylooksriddim, original: true, year: )
sa1 = SongArtist.create(artist: heptones, song: prettylooks)

takearide = Song.create(title: "Take a Ride", riddim: takearideriddim, original: true, year: 1968)
sa22 = SongArtist.create(artist: alcampbell, song: takearide)

drumsong = Song.create(title: "Drum Song", riddim: drumsongriddim, original: true, year: )
sa2 = SongArtist.create(artist: jackiemittoo, song: drumsong)

java = Song.create(title: "Java", riddim: javariddim, original: true, year: 1971)
sa23 = SongArtist.create(artist: augustuspablo, song: java)

shankisheck = Song.create(title: "Shank I Sheck", riddim: , original: true, year: )
sa24 = SongArtist.create(artist: bababrooks, song: shankisheck)

bababoom = Song.create(title: "Ba Ba Boom", riddim: bababoomriddim, original: true, year: )
sa25 = SongArtist.create(artist: jamaicans, song: bababoom)

mrbassie = Song.create(title: "Mr Bassie", riddim: mrbassieriddim, original: true, year: )
sa26 = SongArtist.create(artist: horaceandy, song: mrbassie)

swingeasy = Song.create(title: "Swing Easy", riddim: swingeasyriddim, original: true, year: )
sa27 = SongArtist.create(artist: soulvendors, song: swingeasy)

cantbuylove = Song.create(title: "Can't Buy Love", riddim: swingeasy, original: false, year: 1979)
sa20 = SongArtist.create(artist: johnnyosbourne, song: cantbuylove)

cusscuss = Song.create(title: "Cuss Cuss", riddim: cusscussriddim, original: true, year: )
sa10 = SongArtist.create(artist: lloydrobinson, song: cusscuss)

skylarking = Song.create(title: "Skylarking", riddim: skylarkingriddim, original: true, year: )
sa11 = SongArtist.create(artist: horaceandy, song: skylarking)

imjustaguy = Song.create(title: "I'm Just a Guy", riddim: vanityriddim, original: true, year: )
sa7 = SongArtist.create(artist: altonellis, song: imjustaguy)

vanity = Song.create(title: "Vanity", riddim: vanityriddim, original: false, year: )
sa8 = SongArtist.create(artist: sugarminott, song: vanity)

realrock = Song.create(title: "Real Rock", riddim: realrockriddim, original: true, year: )
sa12 = SongArtist.create(artist: sounddimension, song: realrock)

satta = Song.create(title: "Satta Massagana", riddim: sattariddim, original: true, year: )
sa6 = SongArtist.create(artist: abyssinians, song: satta)

slengteng = Song.create(title: "Sleng Teng", riddim: slengtengriddim, original: true, year: )
sa14 = SongArtist.create(artist: waynesmith, song: slengteng)

queenoftheminstrel = Song.create(title: "Queen of the Minstrel", riddim: queenoftheminstrelriddim, original: true, year: )
sa15 = SongArtist.create(artist: cornellcampbell, song: queenoftheminstrel)
sa21 = SongArtist.create(artist: eternals, song: queenoftheminstrel)

bababoom = Song.create(title: "Ba Ba Boom", riddim: bababoomriddim, original: true, year: )
sa3 = SongArtist.create(artist: jamaicans, song: bababoom)

truthandrights = Song.create(title: "Truth and Rights", riddim: takearideriddim, original: false, year: 1979)
sa9 = SongArtist.create(artist: johnnyosbourne, song: truthandrights)

bababoom2 = Song.create(title: "Ba Ba Boom", riddim: bababoomriddim, original: false, year: )
sa4 = SongArtist.create(artist: jackiemittoo, song: bababoom2)
sa5 = SongArtist.create(artist: soulvendors, song: bababoom2)
