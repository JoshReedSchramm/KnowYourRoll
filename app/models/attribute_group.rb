class AttributeGroup < ActiveRecord::Base
  validates :name, presence: true
  validates :sequence, presence: true, uniqueness: { scope: :game }

  belongs_to :game
end