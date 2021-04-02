class LabelsController < ApplicationController
  def index
    @labels = Label.all.sort_by {|l| l.name}
    @label = Label.new
  end

  def show
    @label = Label.find(params[:id])
    @songs = Song.where(label_id: @label.id)
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
    params.require(:label).permit(:name, :founder_id)
  end
end
