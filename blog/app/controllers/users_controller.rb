class UsersController < ApplicationController
  def new
    puts flash[:errors]
  end

  def create
    redirect_to signup_path unless ['cernhofer@gmail.com', 'hayleeham@gmail.com', 'sushmitavgopalan@uchicago.edu'].include? params[:email]
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
