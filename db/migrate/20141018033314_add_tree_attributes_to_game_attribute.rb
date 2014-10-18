class AddTreeAttributesToGameAttribute < ActiveRecord::Migration
  def change
  	add_column :game_attributes, :sequence, :integer, default: 0
  	add_column :game_attributes, :parent_id, :integer
  end
end
