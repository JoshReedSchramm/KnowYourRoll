class NumericAttribute < GameAttribute
  def has_character_attribute
    true
  end

  def build_character_attribute(character)
    character.character_attributes << NumericCharacterAttribute.new(game_attribute_id: self.id)
  end
end
