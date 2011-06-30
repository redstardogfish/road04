module ApplicationHelper
  def page_title
    (@title.present? && "#{@title} | Second Road") || 'Second Road'
  end
  def body_tag_with_class
    tag("body", {:class => @body_class}, true)
  end
  
end
