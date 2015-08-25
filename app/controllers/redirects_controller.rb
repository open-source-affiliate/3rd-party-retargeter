class RedirectsController < ApplicationController

  def new
    @redirect = Redirect.new
  end

  def edit
    @redirect = Redirect.find(params[:id])
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
    @redirect = Redirect.find(params[:id])
    if @redirect.update(redirect_params)
      redirect_to :root, notice: 'Redirect was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @redirect = Redirect.find(params[:id])
    @redirect.destroy
    redirect_to :root, notice: "Redirect was successfully destroyed."
  end

  private
  def redirect_params
    params.require(:redirect).permit(:name, :url, :facebook_js, :perfect_audience_js, :adroll_js, :other_js)
  end

end
