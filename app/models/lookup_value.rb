class LookupValue < ActiveRecord::Base
  
  validates :input_key, presence: true, uniqueness: { scope: :lookup_table }
  validates :output_value, presence: true

  belongs_to :lookup_table

end