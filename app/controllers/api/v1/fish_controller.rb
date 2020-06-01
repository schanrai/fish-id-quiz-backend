class Api::V1::FishController < ApplicationController
  #skip_before_action :authorized3
  #find way to get the error message from Application Contorller out to the front end

  def index
    fishies = Fish.all
    render json: fishies, status: :accepted
  end

  def show
    fish = Fish.find_by_id(params[:id])
    render json: fish, status: :accepted
  end

end
