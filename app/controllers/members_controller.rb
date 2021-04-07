class MembersController < ApplicationController

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    @member.save
    redirect_back(fallback_location: root_path)
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to artists_path
  end

  private

  def member_params
    params.require(:member).permit(:band_id, :member_id)
  end
end
