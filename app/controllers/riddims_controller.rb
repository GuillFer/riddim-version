class RiddimsController < ApplicationController
  def index
    @riddims = Riddim.all.sort_by {|r| r.title}
    @riddim = Riddim.new
  end

  def show
    @riddim = Riddim.find(params[:id])
    @songs = Song.where(riddim_id: @riddim.id).sort_by {|s|s.artists[0].name}
  end

  def create
    @riddim = Riddim.new(riddim_params)
    @riddim.save
    redirect_back(fallback_location: root_path)
  end

  def riddim_params
    params.require(:riddim).permit(:title)
  end
end
