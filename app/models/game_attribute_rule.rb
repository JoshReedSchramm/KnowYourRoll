class GameAttributeRule < ActiveRecord::Base

  belongs_to :game_rule
  belongs_to :lookup_table
  belongs_to :affecting_game_attribute, class_name: 'GameAttribute', foreign_key: :affecting_game_attribute_id
  belongs_to :affected_game_attribute, class_name: 'GameAttribute', foreign_key: :affected_game_attribute_id

  validates :name, presence: true
  validates :rule_function, presence: true
  
end
