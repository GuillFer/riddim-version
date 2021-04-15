class ArtistsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :producers, :show]

  def index
    require 'will_paginate/array'
    @artists = Artist.joins(:song_artists).uniq.sort_by {|a| a.name}.paginate(page: params[:page], per_page: 200)
    @artist = Artist.new
  end

  def producers
    @artists = Artist.joins(:songs).uniq.sort_by {|p| p.name}
  end

  def show
    require 'will_paginate/array'
    @artist = Artist.find(params[:id])
    @bands = Member.where('member_id = ?', @artist.id)
    @artist_labels = Label.where('founder_id = ?', @artist.id)
    @songs = Song.joins(:song_artists).where('song_artists.artist_id = ?', @artist.id).sort_by {|s| s.title}.paginate(page: params[:page], per_page: 50)
    @producer_songs = Song.where('producer_id = ?', @artist.id).sort_by {|s| s.title}.paginate(page: params[:page], per_page: 25)
    @songs.count > @producer_songs.count ? @role = "artist" : @role = "producer"
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to(artists_path)
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_back(fallback_location: root_path)
  end

  def artist_params
    params.require(:artist).permit(:name, :aka)
  end
end
