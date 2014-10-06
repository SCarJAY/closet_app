class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  include SessionHelper
  helper_method :current_user, :logged_in?, :authenticate
end
