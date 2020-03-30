class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(email: user_login_params[:email])
    #User#authenticate comes from BCrypt
    if user && user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: user.id })
      render json: {user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

private

  def user_login_params
    params.permit(:email, :password)
  end
end
