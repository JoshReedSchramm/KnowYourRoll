class GameAttribute < ActiveRecord::Base
  acts_as_tree order: :sequence
  belongs_to :attribute_group

  validates :sequence, presence: true #, uniqueness: { scope: :parent_id } # Doesn't work with NIL parentIDs
  validates :group_sequence, presence: true #, uniqueness: { scope: :attribute_group_id } # Isn't working as is 
  validates :name, presence: true
  validates :type, presence: true
end
