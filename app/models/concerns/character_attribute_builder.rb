module CharacterAttributeBuilder
  def self.included(base)
    base.class_eval do
      def build_attribute(character, attribute)
        continue_loop = attribute.build_character_attribute(character)
        if continue_loop
          attribute.children.each do |a|
            build_attribute(character, a)
          end
        end
      end
    end
  end
end
