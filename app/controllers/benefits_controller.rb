class BenefitsController < ApplicationController

  before_action :check_if_logged_in, :only => [:new, :edit]

  def index
    @benefits = Benefit.all
  end

  def new
    @benefit = Benefit.new
    @benefits = Benefit.all
  end

# save new benefit to database
  def create
    benefit = Benefit.create benefit_params
    redirect_to new_benefit_path
  end

  def edit
    @benefit = Benefit.find params[:id]
  end

#update changes made to benefit to the database
  def update
    benefit = Benefit.find params[:id]
    benefit.update benefit_params
    redirect_to new_benefit_path
  end

# access menu items so tagged menu items show for selected benefit
  def show
    @benefit = Benefit.find params[:id]
    @menus = Menu.all
  end

# delete action for benefits
  def destroy
    benefit = Benefit.find params[:id]
    benefit.destroy
    redirect_to new_benefit_path
  end

  private
  def benefit_params
    params.require(:benefit).permit(:name)
  end
end
