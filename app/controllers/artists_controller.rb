class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.sort_by {|a| a.name}
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Song.joins(:song_artists).where('song_artists.artist_id = ?', @artist.id)
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artists_path
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
