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
    benefit = Benefit.create benefit_params
    redirect_to new_benefit_path
  end

  def show
  end

  private
  def benefit_params
    params.require(:benefit).permit(:name)
  end
end
