class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email

  has_many :game_histories
end
