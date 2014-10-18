class AddGmCodeToGames < ActiveRecord::Migration
  def change
    add_column :games, :gm_code, :string
  end
end
