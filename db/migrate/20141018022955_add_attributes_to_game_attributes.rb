class AddAttributesToGameAttributes < ActiveRecord::Migration
  def change
  	add_column :game_attributes, :min_number, :integer
  	add_column :game_attributes, :max_number, :integer
  	add_column :game_attributes, :description, :text
  end
end
