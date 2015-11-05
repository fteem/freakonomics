class Freakonomics::Fetcher
  FEED_URL = "http://feeds.feedburner.com/freakonomicsradio?format=xml"

  def self.fetch_feed
    open(FEED_URL).read
  end
end
