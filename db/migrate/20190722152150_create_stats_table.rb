class CreateStatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :ign 
      t.string :team
      t.string :position
      t.decimal :total_points
      t.decimal :average_points
      t.integer :games_played
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.integer :creep_score
      t.integer :kill_assist_bonus
      t.string :multi_kill
      t.string :week
      t.integer :player_id

    end
    add_index :stats, :player_id
  end
end
