require 'nokogiri'

class Freakonomics::Parser
  def self.parse feed
    doc = Nokogiri::XML feed
    episodes = doc.css("item")
    episodes.inject([]) do |store, episode| 
      store << { name: episode.css("title").children.first.text.strip, url: episode.xpath("//feedburner:origEnclosureLink").children.first.text.gsub("www.podtrac.com/pts/redirect.mp3/","") } 
    end
  end
end
