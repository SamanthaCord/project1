class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @menus = Menu.all
  end

  def create
    menu = Menu.create menu_params
    redirect_to new_menu_path
  end

  def edit
    @menu = Menu.find params[:id]
  end

  def update
    menu = Menu.find params[:id]
    menu.update menu_params
    redirect_to new_menu_path
  end

  def destroy
    menu = Menu.find params[:id]
    menu.destroy
    redirect_to new_menu_path
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :ingredients, :price, :size, :weather)
  end
end
