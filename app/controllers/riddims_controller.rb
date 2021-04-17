class RiddimsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @riddims = Riddim.joins(:songs).uniq.sort_by {|r| r.songs.count}.reverse
    @riddim = Riddim.new
  end

  def show
    @riddim = Riddim.find(params[:id])
    @songs = Song.where(riddim_id: @riddim.id).sort_by {|s|s.artists[0].name}
  end

  def random
    @riddim = Riddim.find(rand(0..300))
    @songs = Song.where(riddim_id: @riddim.id).sort_by {|s|s.artists[0].name}
    render "show.html.erb"
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
