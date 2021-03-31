class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song_artist = SongArtist.new
    @song_artist.build_song
  end

  def create
    @song = Song.new(song_params)
    @song_artist = SongArtist.new
    @song.save!
    @song_artist.song = @song
    @song_artist.artist = params[:song][:song_artists_attributes]

    @song_artist.save!
    # @artists = params[:song][:song_artist][:name].split(";")
    # @artists.each do |artist|
    #   @artist = Artist.find_by(name: artist)
    #   @song_artist = SongArtist.new
    #   @song_artist.song = @song
    #   @song_artist.artist = @artist
    #   @song_artist.save!
    # end
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
    @song_artists = SongArtist.where(song_id: @song.id)
    @artists = []
    @song_artists.each do |artist|
      @artists << artist.artist.name
    end
    # raise
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to songs_path
  end

  private

  def song_params
    # params.require(:song).permit(:title, :year, :original, :label_id, :riddim_id, :producer_id)
    params.require(:song).permit(:title, :year, :original, :label_id, :riddim_id, :producer_id, song_artists_attributes: [:song, :artist])
  end

  # def song_artist_params
  #   params.require(:song_artist).permit(:song_id, :artist_id)
  # end
end
