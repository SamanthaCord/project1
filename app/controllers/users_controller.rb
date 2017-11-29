class UsersController < ApplicationController

  before_action :check_if_logged_in, :only => [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
    session[:user_id] = @user.id
    redirect_to dashboard_path
    else
    render :new
  end
end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
