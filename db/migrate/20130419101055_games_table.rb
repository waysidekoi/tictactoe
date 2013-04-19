class GamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id
      t.references :user
      t.integer :opponent_id
      t.string :state, :default => "---------"
    end
  end
end
