module ApplicationHelper

  def build_summary(attributes)
    attrs = attributes.collect(&:summary)
    attrs = attrs.reject{|a| a.nil?}
    return "" if attrs.nil?
    return attrs.join(", ")
  end
  
end
