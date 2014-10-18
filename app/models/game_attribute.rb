class GameAttribute < ActiveRecord::Base
  acts_as_tree order: :sequence
  belongs_to :attribute_group
  belongs_to :game

  validates :sequence, presence: true #, uniqueness: { scope: :parent_id } # Doesn't work with NIL parentIDs
  validates :group_sequence, presence: true #, uniqueness: { scope: :attribute_group_id } # Isn't working as is 
  validates :name, presence: true
  validates :type, presence: true

  def build_character_attribute
    # Abstract implementation, build an attribute builder in the implementations
    nil
  end
  
  def summary
    ""
  end
  
end
