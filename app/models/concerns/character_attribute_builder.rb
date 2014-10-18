module CharacterAttributeBuilder
  def self.included(base)
    base.class_eval do
      def build_attribute(character, attribute)
        attribute.build_character_attribute(character)
        attribute.children.each do |a|
          build_attribute(character, a)
        end
      end
    end
  end
end
