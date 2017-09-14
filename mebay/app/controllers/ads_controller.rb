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
  end
end
