class Api::V1::GameHistoriesController < ApplicationController


  def index
    game_histories = current_user.game_histories
    render json: game_histories
  end


  def create
    game_history = current_user.game_histories.build(game_history_params)
    if game_history.save
      render json: game_history, status: :accepted
    else
      render json: { :messages => game_history.errors.full_messages }, status: :not_acceptable
    end
  end

  private

    def game_history_params
      #params.require(:game_history).permit(:score)
      params.permit(:score)
    end


  end
