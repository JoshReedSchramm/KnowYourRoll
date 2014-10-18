class GameAttribute < ActiveRecord::Base
  acts_as_tree order: :sequence
  belongs_to :attribute_group
  belongs_to :game

  validates :sequence, presence: true, uniqueness: { scope: [:attribute_group_id, :parent_id] }
  validates :name, presence: true
  validates :type, presence: true
end
