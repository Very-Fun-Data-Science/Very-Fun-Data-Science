class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue
      session.delete(:user_id)
      @current_user = nil
    end
  end

  def login_user(user)
    session[:user_id] = @user.id
  end

  def logout_user
    session[:user_id] = nil
  end

  def verify_logged_in
    redirect_to login_path unless current_user
  end
end
