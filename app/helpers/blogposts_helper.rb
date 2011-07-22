require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

module BlogpostsHelper
  
  def blog_feed
    source = "http://timvaughan001.wordpress.com/rss" # url or local file
    content = "".html_safe # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)

    html = "<ul class = 'blogItem'>".html_safe
    rss.items.each do |i|
      html << "<li><a href='#{h i.link}'>#{i.title}</a></li>".html_safe
      html << "<li> '#{i.description}' </li>".html_safe
    end
    html << "</ul>".html_safe
    html

  end 
  
  
end
