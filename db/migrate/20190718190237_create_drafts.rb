class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.integer :drafted_team_id
      t.integer :player_id
    end
  end
end
