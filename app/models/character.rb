class Character < ActiveRecord::Base
  include CharacterAttributeBuilder

  belongs_to :game
  has_many :character_attributes
  accepts_nested_attributes_for :character_attributes

  validates :name, presence: true

  def has_attribute_in_group(group)
    self.character_attributes.joins(:game_attribute).joins(:attribute_group).where(["attribute_group.id=?", group.id]).any?
  end

  def character_attribute_matching_game_attribute(game_attribute)
    self.character_attributes.to_a.find{|a| a.game_attribute_id == game_attribute.id}
  end

  def build_attribute_graph
    if self.new_record?
      game.attribute_groups.each do |ag|
        ag.game_attributes.each do |a|
          build_attribute(self, a)
        end
      end
    end
  end
end
