class CreateGameRules < ActiveRecord::Migration
  def change
    create_table :game_rules do |t|
      t.integer :game_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
