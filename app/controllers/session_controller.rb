class SessionController < ApplicationController
  def new
  end

  # action to create a new session when a user logs in
  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
end

# action to send session when user logs out
def destroy
  session[:user_id] = nil
  redirect_to root_path
end
end
