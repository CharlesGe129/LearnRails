class AdsController < ApplicationController
  before_action :check_login_in, only: [:edit, :update]
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

  private
    def check_login_in
      authenticate_or_request_with_http_basic("Ads") do |username, password|
        username == 'admin' && password == 'aoe123'
      end
    end
end
