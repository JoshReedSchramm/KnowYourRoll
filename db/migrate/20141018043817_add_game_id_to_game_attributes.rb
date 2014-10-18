class AddGameIdToGameAttributes < ActiveRecord::Migration
  def change
  	add_column :game_attributes, :game_id, :integer
  end
end
