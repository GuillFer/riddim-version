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
    redirect_to labels_path
  end

  def label_params
    params.require(:label).permit(:name)
  end
end
