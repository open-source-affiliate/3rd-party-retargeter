class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user

  def main
    @redirects = @user.redirects
  end

  private
  def set_user
    @user = current_user
  end
end
