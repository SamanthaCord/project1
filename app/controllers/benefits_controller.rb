class BenefitsController < ApplicationController
  def index
    @benefits = Benefit.all
  end

  def new
    @benefit = Benefit.new
    @benefits = Benefit.all
  end

  def create
    benefit = Benefit.create benefit_params
    redirect_to new_benefit_path
  end

  def edit
    @benefit = Benefit.find params[:id]
  end

  def update
    benefit = Benefit.find params[:id]
    benefit.update benefit_params
    redirect_to new_benefit_path
  end

  def show
    @benefit = Benefit.find params[:id]
    @menus = Menu.all


  end

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
