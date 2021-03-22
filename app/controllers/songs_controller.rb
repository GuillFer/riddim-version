class SongsController < ApplicationController
  def index
    @songs = Song.all
    @song = Song.new
    @song_artist = SongArtist.new
  end

  def show

  end

  def create
    label = Label.find_by(name: params[:song][:label])
    riddim = Riddim.find_by(title: params[:song][:riddim])
    @song = Song.new(song_params)
    @song.label = label
    @song.riddim = riddim
    @artist = Artist.find_by(name: params[:song][:song_artists][:name])
    @song_artist = SongArtist.new
    @song_artist.song = @song
    @song_artist.artist = @artist
    @song.save
    @song_artist.save
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :year, :original)
  end
end
