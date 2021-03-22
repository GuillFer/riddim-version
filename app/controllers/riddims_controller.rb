class RiddimsController < ApplicationController
  def index
    @riddims = Riddim.all
    @riddim = Riddim.new
  end

  def create
    @riddim = Riddim.new(riddim_params)
    @riddim.save
    redirect_to riddims_path
  end

  def riddim_params
    params.require(:riddim).permit(:title)
  end
end
