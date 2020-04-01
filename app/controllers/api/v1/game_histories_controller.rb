class Api::V1::GameHistoriesController < ApplicationController

  def index
    @game_histories = current_user.game_histories
    render json: GameHistorySerializer.new(@game_histories)
  end

  
end
