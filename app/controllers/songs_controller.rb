class SongsController < ApplicationController
  def index
    @songs = Song.all.paginate(page: params[:page], per_page: 30)
  end

  def new
    @artist = Artist.new
    @label = Label.new
    @riddim = Riddim.new
    @song = Song.new
    @song.song_artists.build
  end

  def create
    @song = Song.new(song_params)
    @song.save!
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
    @song_artists = SongArtist.where(song_id: @song.id)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to songs_path
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def song_params
    params.require(:song).permit(:id, :title, :year, :original, :label_id, :riddim_id, :producer_id,  artist_ids: [])
  end

end
