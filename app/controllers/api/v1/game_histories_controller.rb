class Api::V1::GameHistoriesController < ApplicationController

  def index
    game_histories = current_user.game_histories
    #game_histories = GameHistory.all
    render json: game_histories
  end

#TEST THIS CODE
  def create
    game_history = current_user.game_histories.build(game_history_params)
    game_history.user_id = current_user.id
    if game_history.save
    # render json: {game_history, message: 'Hashes of data will get converted to JSON' }
    # response = { message: "Successfully saved game." }
      render json: game_history, status: :accepted
    else
      render json: { errors: game_history.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

    def game_history_params
      params.permit(:score, :user_id)
    end

  end
