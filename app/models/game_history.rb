class GameHistory < ApplicationRecord
  validates :score, presence: true
  belongs_to :user

end
