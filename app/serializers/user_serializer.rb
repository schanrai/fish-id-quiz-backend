class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :username, :email, :password

  has_many :game_histories


  # def default_serializer_options
  #   {root: false}
  # end


end
