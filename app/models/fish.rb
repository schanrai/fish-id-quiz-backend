class Fish < ApplicationRecord

  def index
    fishies = Fish.all
    render json: fishies
  end
  
end
