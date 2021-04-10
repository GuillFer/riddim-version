class SongsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :instrumentals, :originals]

  def index
    require 'will_paginate/array'
    @songs_total = Song.all.count
    @songs = Song.all.sort.reverse.paginate(page: params[:page], per_page: 50)
  end

  def originals
    require 'will_paginate/array'
    @songs = Song.where(original: true).paginate(page: params[:page], per_page: 50)
  end

  def instrumentals
    require 'will_paginate/array'
    @songs = Song.where(instrumental: true).paginate(page: params[:page], per_page: 50)
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
    redirect_back(fallback_location: root_path)
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
    params.require(:song).permit(:id, :title, :year, :original, :instrumental, :label_id, :riddim_id, :producer_id, :producer_alias,  artist_ids: [], song_artists_attributes: [:id, :as])
  end

end
