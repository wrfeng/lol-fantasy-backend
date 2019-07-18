class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :ign
      t.string :full_name
      t.string :team
      t.string :position
      t.string :img_url
    end
  end
end
