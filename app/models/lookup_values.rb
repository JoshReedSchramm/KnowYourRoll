class LookupValues < ActiveRecord::Base
  
  validates :input_key, presence: true, uniqueness: { scope: :game_attribute_rule_id }
  validates :output_value, presence: true

  belongs_to :game_attribute_rule

end