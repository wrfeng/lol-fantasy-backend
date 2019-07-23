class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.integer :drafted_team_id
      t.integer :player_id

    end
    add_index :drafts, :drafted_team_id
    add_index :drafts, :player_id
  end
end
