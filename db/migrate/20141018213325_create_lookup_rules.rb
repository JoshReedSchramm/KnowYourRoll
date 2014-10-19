class CreateLookupRules < ActiveRecord::Migration
  def change
    create_table :lookup_values do |t|
        t.integer :game_attribute_rule_id
        t.string :input_key
        t.string :output_value

      t.timestamps
    end
  end
end