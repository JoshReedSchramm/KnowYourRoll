class GameAttribute < ActiveRecord::Base
  validates :name, presence: true
  validates :type, presence: true

  belongs_to :attribute_group
end