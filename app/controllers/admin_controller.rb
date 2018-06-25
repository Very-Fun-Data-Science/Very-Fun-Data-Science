class AdminController < ApplicationController

  before_action :verify_admin
  
  def index
    @articles = Article.all.order(created_at: :desc)
  end

  private

  def verify_admin
    unless current_user
      redirect_to login_path
    end
  end
end
