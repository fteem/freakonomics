require 'nokogiri'

class Freakonomics::Parser
  DATE_REGEX = /\d\d [a-zA-Z]+ \d\d\d\d/

  def self.parse feed
    new.parse(feed)
  end

  def parse feed
    doc = Nokogiri::XML feed
    episodes = find_episodes_items(doc)
    build_struct_from_episode(episodes)
  end

  private

  def build_struct_from_episodes eps
    eps.inject([]) do |store, episode|
      store << { name: extract_episode_title(episode), url: extract_episode_url(episode), publish_date: extract_episode_release_date(episode) }
    end
  end

  def find_episodes_items document
    document.css("item")
  end

  def extract_episode_title episode
    episode.css("title").children.first.text.strip
  end

  def extract_episode_url episode
    episode.xpath("//feedburner:origEnclosureLink").children.first.text.gsub("www.podtrac.com/pts/redirect.mp3/","")
  end

  def extract_episode_release_date episode
    episode.css("pubDate").children.first.text.strip[DATE_REGEX]
  end
end
