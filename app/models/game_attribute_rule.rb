class GameAttributeRule < ActiveRecord::Base

  belongs_to :game
  belongs_to :game_attribute

  validates :name, presence: true
  validates :type, presence: true

  has_many :game_attributes
  has_many :lookup_values
end
