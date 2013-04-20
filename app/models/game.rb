class Game < ActiveRecord::Base

  belongs_to :creator, :class_name=>"User", :foreign_key=>:user_id
  belongs_to :opponent, :class_name=>"User", :foreign_key=>:opponent_id
  belongs_to :winner, :class_name=>"User", :foreign_key=>:winner_id

  scope :active_games, where(:active => true)

end
