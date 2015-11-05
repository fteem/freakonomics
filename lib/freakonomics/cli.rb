class Freakonomics::CLI
  def self.latest opts
    raw_feed = Freakonomics::Fetcher.fetch_feed
    metadata = Freakonomics::Parser.parse(raw_feed).first
    Freakonomics::Reporter.download(metadata[:name])
    episode = Freakonomics::Downloader.download(metadata[:name], metadata[:url])
    Freakonomics::FileSaver.save!(metadata[:name], episode, opts[:path])
  end

  def self.episode opts
    raw_feed = Freakonomics::Fetcher.fetch_feed
    metadata = Freakonomics::Parser.parse(raw_feed)
    if opts[:name]
      episode_metadata = metadata.detect {|meta| meta[:name] == opts[:name] }
      abort("No episode found with name: #{opts[:name]}") unless episode_metadata
    end
    if opts[:publish_date]
      episode_metadata = metadata.detect {|meta| meta[:publish_date] == opts[:publish_date] }
      abort("No episode found with release date: #{opts[:publish_date]}") unless episode_metadata
    end
    Freakonomics::Reporter.download(episode_metadata[:name])
    episode = Freakonomics::Downloader.download(episode_metadata[:name], episode_metadata[:url])
    Freakonomics::FileSaver.save!(episode_metadata[:name], episode, opts[:path])
  end

  def self.all opts
    raw_feed = Freakonomics::Fetcher.fetch_feed
    metadata = Freakonomics::Parser.parse(raw_feed)
    metadata.each do |episode_metadata|
      Freakonomics::Reporter.download(episode_metadata[:name])
      episode = Freakonomics::Downloader.download(episode_metadata[:name], episode_metadata[:url])
      Freakonomics::FileSaver.save!(episode_metadata[:name], episode, opts[:path])
      Freakonomics::Reporter.downloaded(episode_metadata[:name])
    end
  end
end
