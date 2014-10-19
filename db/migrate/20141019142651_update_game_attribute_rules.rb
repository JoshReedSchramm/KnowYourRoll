class UpdateGameAttributeRules < ActiveRecord::Migration
  def change
    rename_column :game_attribute_rules, :game_id, :game_rule_id
  end
end
