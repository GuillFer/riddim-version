class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.sort_by {|a| a.name}
    @artist = Artist.new
  end

  def producers
    @artists = Artist.joins(:songs).uniq.sort_by {|p| p.name}
  end

  def show
    require 'will_paginate/array'
    @artist = Artist.find(params[:id])
    @artist_labels = Label.where('founder_id = ?', @artist.id)
    @songs = Song.joins(:song_artists).where('song_artists.artist_id = ?', @artist.id).sort_by {|s| s.title}.paginate(page: params[:page], per_page: 25)
    @producer_songs = Song.where('producer_id = ?', @artist.id).sort_by {|s| s.title}.paginate(page: params[:page], per_page: 25)
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_back(fallback_location: root_path)
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
