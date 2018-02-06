class SessionsController < ApplicationController
  def new
    # redirect_to profile_path(current_user.username) if current_user
    redirect_to root_url if current_user
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)

    if @user&.authenticate(params[:session][:password])
      login_user(@user)
      # redirect_to profile_path(current_user.username) if current_user
      redirect_to root_url
    else
      flash[:email] = params[:session][:email]
      flash[:error] = "The email or password you entered was incorrect."
      redirect_to login_path
    end
  end

  def destroy
    logout_user
    redirect_to root_url
  end
end
