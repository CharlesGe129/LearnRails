class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    ActionController::Parameters.permit_all_parameters = true
    @ad = Ad.new(params[:ad])
    @ad.save
    redirect_to("/ads/#{@ad.id}")
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    ActionController::Parameters.permit_all_parameters = true
    @ad = Ad.find(params[:id])
    @ad.update_attributes(params[:ad])
  end
end
