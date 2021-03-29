class PagesController < ApplicationController
  def home
  end

  def admin
    @riddim = Riddim.new
    @artist = Artist.new
    @label = Label.new
  end
end
