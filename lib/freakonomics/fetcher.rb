require 'net/http'

class Freakonomics::Fetcher
  FEED_URL = "http://feeds.feedburner.com/freakonomicsradio?format=xml"

  def self.fetch_feed
    ::Net::HTTP.get(URI(FEED_URL))
  end
end
