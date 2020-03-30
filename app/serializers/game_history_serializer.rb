class GameHistorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :score, :created_at

  belongs_to :user
end
