class PagesController < ApplicationController

  before_action :check_if_logged_in, :only => [:dashboard]

  def home
  end

  def random
    # access all menu items and pluck name, ingredients and price. Pick a sample from this
    @menus = Menu.all.pluck(:name, :ingredients, :price)
    @random_selection = @menus.sample
  end

  def weathersearch
    # access all menu items, use API to get current weather
    @menus = Menu.all
    url = "http://api.openweathermap.org/data/2.5/weather?q=Sydney&appid=#{ ENV["OPEN_WEATHER_API_KEY"] }"
    @info = HTTParty.get(url);
    @current_temp = @info['main']['temp'].to_i / 10
  end

  def dashboard
    # access to all users for user list
    @users = User.all
  end

end
