class WelcomeController < ApplicationController
<<<<<<< HEAD
  def index
    if session[:user_id]
      user = User.find_by(session[:user_id])
      redirect_to(user_path(user))
    else
      redirect_to(login_path)
    end
  end
=======

def index
end


>>>>>>> 76a38568f016882daf728d463278779046117ebe
end
