class AddContainerToGameAttributes < ActiveRecord::Migration
  def change
    add_column :game_attributes, :container, :boolean, default: true
  end
end
