class HomeController < ApplicationController
  def index
  	@seasons = Season.all
  end
end
