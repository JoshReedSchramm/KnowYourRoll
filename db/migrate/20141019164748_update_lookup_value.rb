class UpdateLookupValue < ActiveRecord::Migration
  def change
    rename_column :lookup_values, :game_attribute_rule_id, :lookup_table_id
  end
end
