class PagesController < ApplicationController
  def home
  end

  def random
    @menus = Menu.all.pluck(:name, :ingredients, :price)
    @random_selection = @menus.sample
  end
end
