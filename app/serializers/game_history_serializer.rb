class GameHistorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :created_at

  belongs_to :user
end
