class NumericAttribute < GameAttribute

  def summary
    "#{self.name}:#{self.min_number}-#{self.max_number}"
  end
  
end