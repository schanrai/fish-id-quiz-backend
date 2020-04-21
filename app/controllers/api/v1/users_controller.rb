class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  #create action is exempt from the authorized method in App controller

  def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: { user: user, jwt: token }, status: :created
            #render json: {useronly: [:id, :username, :email], jwt: token}, status: created

        else
            render json: { :errors => user.errors.full_messages }, status: :not_acceptable
        end
    end

    #show gamehistory?
  def show
      user = User.find_by(params[:id])
      render json: user
  end



    private
    def user_params
        params.permit(:username, :email, :password)
    end

end
