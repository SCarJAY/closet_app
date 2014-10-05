class WelcomeController < ApplicationController

  def index
  end

  def dashboard
    @user = User.find(params[:id])
  end

end
