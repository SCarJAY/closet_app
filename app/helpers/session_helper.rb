module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

  def authenticate
    redirect_to login_path unless logged_in?
  end

  def log_out!
    session[:user_id] = nil
  end
end
