class MultilineAndMultiselectAttributes < ActiveRecord::Migration
  def change
    add_column :game_attributes, :multi_line, :boolean, default: false
    add_column :game_attributes, :allows_multiple_values, :boolean, default: false
  end
end
