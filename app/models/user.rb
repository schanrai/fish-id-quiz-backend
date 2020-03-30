class User < ApplicationRecord
  validates :email, :username, uniqueness: true
  validates :email, :username, presence: true

  has_many :game_histories

  has_secure_password
end
