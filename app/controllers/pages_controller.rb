class PagesController < ApplicationController
  def home
    @artists = Artist.all
    @riddims = Riddim.all
    @songs = Song.all
    @songs_artists = SongArtist.all
  end
end
