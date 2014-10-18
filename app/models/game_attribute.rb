class GameAttribute < ActiveRecord::Base
  acts_as_tree order: :sequence

  validates :sequence, uniqueness: { scope: [:parent_id] }
  validates :sequence, presence: true
  validates :name, presence: true
end
