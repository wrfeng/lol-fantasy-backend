class CreateDraftedTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :drafted_teams do |t|
      t.integer :user_id
      t.integer :league_id
      t.string :team_name
      t.integer :wins
      t.integer :losses
      t.integer :ties
      
    end
    add_index :drafted_teams, :user_id
    add_index :drafted_teams, :league_id
  end
end
