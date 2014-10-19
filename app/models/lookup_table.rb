class LookupTable < ActiveRecord::Base

  belongs_to :game_rule
  
  validates :name, presence: true

  has_many :game_attribute_rules  
  has_many :lookup_values

end
