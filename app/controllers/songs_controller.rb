class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.label = Label.find_by(name: params[:song][:label])
    @song.riddim = Riddim.find_by(title: params[:song][:riddim])
    @song.producer = Artist.find_by(name: params[:song][:producer])
    @song.save!
    @artists = params[:song][:song_artist][:name].split(";")
    @artists.each do |artist|
      @artist = Artist.find_by(name: artist)
      @song_artist = SongArtist.new
      @song_artist.song = @song
      @song_artist.artist = @artist
      @song_artist.save!
    end
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :year, :original)
  end
end
