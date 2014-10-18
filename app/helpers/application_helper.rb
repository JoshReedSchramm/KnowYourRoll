module ApplicationHelper

  def build_summary(attributes)
    attributes.collect(&:summary).join(", ")
  end
  
end
