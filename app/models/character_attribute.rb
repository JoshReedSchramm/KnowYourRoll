class CharacterAttribute < ActiveRecord::Base
  belongs_to :character
  belongs_to :game_attribute

  serialize :value
end
