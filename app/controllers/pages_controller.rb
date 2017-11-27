class PagesController < ApplicationController
  def home
  end

  def random
    @menus = Menu.select('name').collect { |m| m.name }
    @random_selection = @menus.sample
  end
end
