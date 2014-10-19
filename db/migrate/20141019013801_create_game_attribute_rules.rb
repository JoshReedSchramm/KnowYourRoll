class CreateGameAttributeRules < ActiveRecord::Migration
  def change
    create_table :game_attribute_rules do |t|
      t.integer :game_id
      t.string :name
      t.string :description
      t.string :type
      t.integer :affecting_game_attribute_id
      t.string :affected_game_attribute_id

      t.timestamps
    end
  end
end
