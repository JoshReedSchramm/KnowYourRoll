class AddGamesAttributeRuleColumn < ActiveRecord::Migration
  def change
    add_column :game_attribute_rules, :lookup_table_id, :integer
  end
end
