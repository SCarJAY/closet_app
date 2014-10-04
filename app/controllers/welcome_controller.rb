class WelcomeController < ApplicationController

  def index
    if session[:user_id]
      user = User.find_by(session[:user_id])
      redirect_to(user_path(user))
    else
      redirect_to(login_path)
    end
  end

  def dashboard
    @user = User.find(params[:id])
  end
end
