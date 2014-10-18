class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes do |t|
      t.integer :character_id
      t.integer :game_attribute_id
      t.string :value

      t.timestamps
    end
  end
end
