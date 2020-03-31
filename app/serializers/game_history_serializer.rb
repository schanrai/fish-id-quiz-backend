class GameHistorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :score

  belongs_to :user


 #  def initialize(game_history)
 #    @game_history = game_history
 #  end
 #
 #  def to_serialized_json
 #   @game_history.to_json(only: [:score], :include => {
 #     :user => {only: [:username, :id]}
 #   })
 # end


end
