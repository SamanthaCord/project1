class MenusController < ApplicationController

  before_action :check_if_logged_in, :only => [:new, :edit]

  def index
    @menus = Menu.all
  end

  def new
    # access to both menu and benefits list so user can asscoiate benefits with new menu items
    @menu = Menu.new
    @menus = Menu.all
    @benefits = Benefit.all
  end

# create new item action, also save ticked benefits into menu item as an array
  def create
    menu = Menu.create menu_params
    @selected_benefits = params[:benefit_ids => [] ]
    redirect_to new_menu_path
  end

  def edit
    @menu = Menu.find params[:id]
    @benefits = Benefit.all
  end

# update the database with changes to a menu item
  def update
    menu = Menu.find params[:id]
    menu.update menu_params
    redirect_to new_menu_path
  end

#delete action for menu item
  def destroy
    menu = Menu.find params[:id]
    menu.destroy
    redirect_to new_menu_path
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :ingredients, :price, :size, :weather, :benefit_ids => [])
  end
end
