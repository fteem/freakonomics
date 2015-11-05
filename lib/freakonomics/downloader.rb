require 'open-uri'
require 'progressbar'

class Freakonomics::Downloader
  def self.latest options
    new.latest(options)
  end

  def self.download options
    new.download(options)
  end

  def latest options
    metadata = meta.first
    Freakonomics::Reporter.download(metadata[:name])
    download_episode(metadata[:name], metadata[:url], options[:path])
  end

  def download options
    if options[:all]
      Freakonomics::Reporter.all
      download_all(options)
    else
      metadata = meta.detect {|m| m[:name] == options[:name] }
      if metadata.empty?
        Freakonomics::Reporter.not_found
        exit(1)
      else
        download_episode(metadata[:name], metadata[:url], options[:path])
      end
    end
  end
  
  private

  def download_all options
    metadata = meta
    metadata.each do |m|
      Freakonomics::Reporter.download(m[:name])
      download_episode(m[:name], m[:url], options[:path])
    end
  end

  def download_episode name, url, path = nil
    progress_bar = nil

    download = open(url,
      content_length_proc: proc { |total| 
        progress_bar = ProgressBar.new("Download:", total)
      },
      progress_proc: proc { |step|
        progress_bar.set(step)
      }
    )

    full_path = if path.nil? 
      "#{name}.mp3"
    else
      "#{path}/#{name}.mp3"
    end

    IO.copy_stream(download, full_path)
  end

  def meta
    raw_feed = Freakonomics::Fetcher.fetch_feed
    Freakonomics::Parser.parse(raw_feed)
  end
end
