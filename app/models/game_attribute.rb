class GameAttribute < ActiveRecord::Base
  acts_as_tree order: :sequence
  belongs_to :attribute_group

  validates :sequence, uniqueness: { scope: [:parent_id] }
  validates :sequence, presence: true
  validates :name, presence: true
  validates :type, presence: true

end
