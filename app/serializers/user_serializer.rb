class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :username, :email

  has_many :game_histories
end
