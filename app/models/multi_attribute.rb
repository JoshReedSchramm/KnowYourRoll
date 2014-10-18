class MultiAttribute < GameAttribute
  include CharacterAttributeBuilder

  def has_character_attribute
    if options.any?
      true
    else
      false
    end
  end

  def options
    self.children.where(type: [DescriptiveAttribute.to_s, MultiAttribute.to_s])
  end

  def container_elements
    self.children.where(type: [NumericAttribute.to_s])
  end

  def build_character_attribute(character)
    if self.has_character_attribute
      character.character_attributes << PicklistCharacterAttribute.new(game_attribute_id: self.id)
    else
      self.container_elements.each do |container_element|
        container_element.build_character_attribute(character)
      end
    end
    false
  end
end
