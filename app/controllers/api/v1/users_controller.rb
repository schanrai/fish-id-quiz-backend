class Api::V1::UsersController < ApplicationController

  # def create
  #       @user = User.create(user_params)
  #       if @user.valid?
  #           @token = encode_token(user_id: @user.id)
  #           render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  #       else
  #           render json: { error: 'Failed to create user' }, status: :not_acceptable
  #       end
  #   end

    def create
       user = User.create(user_params)
       if user.valid?
          render json: user, status: :created
       else
          render json: { :errors => user.errors.full_messages },
             status: 500
       end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end

end
