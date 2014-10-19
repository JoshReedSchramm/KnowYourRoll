class UpdateGameAttributeRulesTypeColumn < ActiveRecord::Migration
  def change
    rename_column :game_attribute_rules, :type, :rule_function
  end
end
