class Api::V1::GameHistoriesController < ApplicationController
  #before_action :find_user, only: [:create]
  # you would need to tweak the create code in line with @user

  def index
    game_histories = current_user.game_histories
    #game_histories = GameHistory.all
    render json: game_histories
  end

#TEST THIS CODE
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

    # def find_user
    #   @user = User.find(params[:id])
    # end

  end
