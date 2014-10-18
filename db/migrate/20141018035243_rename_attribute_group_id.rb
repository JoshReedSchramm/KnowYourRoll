class RenameAttributeGroupId < ActiveRecord::Migration
  def change
    rename_column :game_attributes, :atrribute_group_id, :attribute_group_id
  end
end
