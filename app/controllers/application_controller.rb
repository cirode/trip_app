class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #from auth_logic expample application
  #https://github.com/binarylogic/authlogic_example/
  
  helper_method :signed_in?
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def signed_in?
    !(!current_user)
  end
end
