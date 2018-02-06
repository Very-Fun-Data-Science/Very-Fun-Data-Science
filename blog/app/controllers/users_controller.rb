class UsersController < ApplicationController
  def new
  end

  def create
    unless WhiteList.exists?(:email => params[:user][:email])
      errors.add :email, "is not on our beta list."
    else
      @user = User.new(user_params)

    if @user.save
      login_user(@user)
      redirect_to root_url
    else
      flash[:errors] = @user.errors.messages
      redirect_to signup_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
