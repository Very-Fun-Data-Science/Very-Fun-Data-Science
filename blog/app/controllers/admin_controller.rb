class Admin::AdminController < ApplicationController
  before_action :verify_admin

  def admin_landing
  end

  private

  def verify_admin
    unless current_user && current_user.is_admin?
      redirect_to login_path
    end
  end
end
