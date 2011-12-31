module ApplicationHelper
 
  def title
    base_title = "Surrey Biodiversity Information Centre"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
