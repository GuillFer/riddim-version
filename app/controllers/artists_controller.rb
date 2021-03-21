class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @artist = Artist.new
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
