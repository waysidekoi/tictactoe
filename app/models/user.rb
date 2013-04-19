class User < ActiveRecord::Base
  has_many :games
  # has_many :created_games, :class_name=>"Game", :foreign_key=>:creator_id
  has_many :joined_games, :class_name=>"Game", :foreign_key=>:opponent_id  

  validates_presence_of :email
  validates_uniqueness_of :email

end
