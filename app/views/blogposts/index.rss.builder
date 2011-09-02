xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Second Road"
    xml.description "The ghost in the 2r machine"
    xml.link blogposts_url
    
    for blogpost in @blogposts
      if blogpost.publish
        xml.item do
          xml.title blogpost.title
          xml.description blogpost.teaser
          xml.pubDate blogpost.created_at.to_s(:rfc822)
          xml.link blogpost_url(blogpost, :rss)
          xml.guid blogpost_url(blogpost, :rss)
        end
      end
    end
  end
end