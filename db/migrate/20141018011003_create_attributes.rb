class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :game_attributes do |t|
    	t.string :name
    	t.string :abbreviation
    	t.string :type
    end
  end
end
