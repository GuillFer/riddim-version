class LabelsController < ApplicationController
  def index
    @labels = Label.all.sort_by {|l| l.name}
    @label = Label.new
  end

  def show
    require 'will_paginate/array'
    @label = Label.find(params[:id])
    @children = Label.where(parent_id: @label.id)
    @songs = Song.where(label_id: @label.id).sort_by {|s|s.artists[0].name}.paginate(page: params[:page], per_page: 50)
  end

  def create
    @label = Label.new(label_params)
    @label.save
    redirect_back(fallback_location: root_path)
  end

  def edit
    @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])
    @label.update(label_params)
    redirect_to(labels_path)
  end

  def label_params
    params.require(:label).permit(:name, :founder_id, :parent_id)
  end
end
