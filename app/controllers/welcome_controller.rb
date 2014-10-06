class WelcomeController < ApplicationController

  def index
    if session[:user_id]
      user = User.find_by(id: session[:user_id])
      redirect_to(dashboard_path(id: session[:user_id]))
    # else
    #   redirect_to(login_path)
    end
  end

  def dashboard
    @user = User.find(params[:id])
    @state = @user.state
    @city = @user.city.gsub(" ", "_")
    @weather = HTTParty.get("http://api.wunderground.com/api/01e9e4537e7c1093/conditions/q/#{@state}/#{@city}.json")
  end

  def about
  end

end
