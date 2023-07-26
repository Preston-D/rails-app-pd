class HomeController < ApplicationController
  def index; end

  def about; end

  def gallery
    @photos = Photo.all
  end
end
