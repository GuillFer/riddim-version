class LabelsController < ApplicationController
  def index
    @labels = Label.all
    @label = Artist.new
  end
end
