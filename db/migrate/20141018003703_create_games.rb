class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :game_system_id

      t.timestamps
    end
  end
end
