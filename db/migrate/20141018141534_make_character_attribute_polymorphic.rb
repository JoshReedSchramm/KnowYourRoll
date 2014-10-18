class MakeCharacterAttributePolymorphic < ActiveRecord::Migration
  def change
    add_column :character_attributes, :type, :string
  end
end
