class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# before anything check if user is logged in
  before_action :fetch_user

private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

# check if logged in to provide access to admin pages
  def check_if_logged_in
    redirect_to login_path unless @current_user.present?
  end
end
