class SongArtistsController < ApplicationController

  def create
    @song_artist = SongArtist.new(song_artist_params)
    @song_artist.save!
    redirect_back(fallback_location: root_path)
  end

  private

  def song_artist_params
    # params.require(:song).permit(:title, :year, :original, :label_id, :riddim_id, :producer_id)
    params.require(:song_artist).permit(:artist_id, song_attributes: [:title, :year, :original, :label_id, :riddim_id, :producer_id])
  end

end
