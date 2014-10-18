class NumericCharacterAttributeValidator < ActiveModel::Validator
  def validate(record)
    return true if record.value.blank?

    val = value_as_number(record.value)

    if val && val <= record.game_attribute.max_number && val >= record.game_attribute.min_number
      return true
    else
      record.errors[:numeric_character_attribute] << "#{record.game_attribute.name} must be a value between #{record.game_attribute.min_number} and #{record.game_attribute.max_number}"
    end
  end

  private
    def value_as_number(val)
      Float(val) rescue nil
    end
end
