class RedirectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :user_owns_redirect!, only: [:edit, :update, :destroy]
  before_action :set_user

  def new
    @redirect = Redirect.new
  end

  def edit
  end

  def create
    @redirect = Redirect.new(redirect_params)

    if @redirect.save
      redirect_to :root, notice: 'Redirect was successfully created'
    else
      render :new
    end
  end

  def update
    if @redirect.update(redirect_params)
      redirect_to :root, notice: 'Redirect was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @redirect.destroy
    redirect_to :root, notice: "Redirect was successfully destroyed."
  end

  private
  def redirect_params
    params.require(:redirect).permit(:name, :url, :facebook_pixel_id, :perfect_audience_advertiser_id, :adroll_advertiser_id, :adroll_pixel_id, :other_js).merge(user: @user)
  end

  def set_user
    @user = current_user
  end

  def user_owns_redirect!
    @redirect = Redirect.find(params[:id])
    unless @redirect.user == current_user
      redirect_to root_url, alert: "Invalid Redirect."
    end
  end
end
