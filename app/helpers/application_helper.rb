module ApplicationHelper
  
  def page_title
    (@title.present? && "#{@title} | Second Road") || 'Second Road'
  end
  def body_tag_with_class
    tag("body", {:class => @body_class}, true)
  end
  def display_date(date)
    return date.strftime("%d/%m/%Y")
  end
  
  # Format text for display.                                                                    
  def format(text)
    sanitize(markdown(text))
  end

  # Process text with Markdown.                                                                 
  def markdown(text)
    BlueCloth::new(text).to_html
  end
  
  
  
  def browser_name
      @browser_name ||= begin

        ua = request.env['HTTP_USER_AGENT'].downcase

        if ua.index('msie') && !ua.index('opera') && !ua.index('webtv')
          'ie'+ua[ua.index('msie')+5].chr
        elsif ua.index('iphone')
          'iphone'
        elsif ua.index('ipad')
          'ipad'
        elsif ua.index('gecko/')
          'gecko'
        elsif ua.index('opera')
          'opera'
        elsif ua.index('konqueror')
          'konqueror'
        elsif ua.index('applewebkit/')
          'safari'
        elsif ua.index('mozilla/')
          'gecko'
        end

      end
  end
    


end
