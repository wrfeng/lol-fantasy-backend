class CreateMatchupsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :matchups do |t|
      t.integer :user_id
      t.integer :opponent_id
    end

    add_index :matchups, :user_id
    add_index :matchups, :opponent_id
  end
end
