class CreateAttributeGroups < ActiveRecord::Migration
  def change
    create_table :attribute_groups do |t|
      t.string :name
      t.text :description
      t.integer :sequence, default: 0
      t.integer :game_id

      t.timestamps
    end
  end
end
