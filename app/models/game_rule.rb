class GameRule < ActiveRecord::Base

  belongs_to :game
  
  validates :name, presence: true
  
  has_many :game_attribute_rules
  has_many :lookup_tables
end
