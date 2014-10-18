class Game < ActiveRecord::Base
  validates :name, presence: true

  has_many :attribute_groups
end
