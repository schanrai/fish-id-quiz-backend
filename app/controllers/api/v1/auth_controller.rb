class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]
    #login action is exempt from the authorized method in App controller

  def login
    user = User.find_by(email: user_login_params[:email])
    #User#authenticate comes from BCrypt
    if user && user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: user.id })
      render json: {user: user, jwt: token }, status: :accepted
    else
      render json: { messages: 'Invalid email or password' }, status: :unauthorized
    end
  end

private

  def user_login_params
    params.permit(:email, :password)
  end
end
