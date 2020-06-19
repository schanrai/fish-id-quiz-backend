class Api::V1::FishController < ApplicationController


  def index
    fishies = Fish.all
    render json: fishies, status: :accepted
  end

  def show
    fish = Fish.find_by_id(params[:id])
    render json: fish, status: :accepted
  end

end
