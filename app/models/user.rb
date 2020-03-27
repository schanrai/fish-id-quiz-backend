class User < ApplicationRecord
  has_many :game_histories

  has_secure_password
end
