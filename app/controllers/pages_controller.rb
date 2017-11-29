class PagesController < ApplicationController

  before_action :check_if_logged_in, :only => [:dashboard]

  def home
  end

  def random
    @menus = Menu.all.pluck(:name, :ingredients, :price)
    @random_selection = @menus.sample
  end

  def weathersearch
    @menus = Menu.all
    url = "http://api.openweathermap.org/data/2.5/weather?q=Sydney&appid=#{ ENV["OPEN_WEATHER_API_KEY"] }"
    @info = HTTParty.get(url);
    @current_temp = @info['main']['temp'].to_i / 10
  end

  def dashboard
  end

end
