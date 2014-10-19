class CreateLookupTables < ActiveRecord::Migration
  def change
    create_table :lookup_tables do |t|
      t.integer :game_rule_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
