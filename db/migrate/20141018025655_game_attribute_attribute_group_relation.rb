class GameAttributeAttributeGroupRelation < ActiveRecord::Migration
  def change
    add_column :game_attributes, :group_sequence, :integer, default: 0 
    add_column :game_attributes, :atrribute_group_id, :integer
  end
end
