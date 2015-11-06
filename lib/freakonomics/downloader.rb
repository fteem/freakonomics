class Freakonomics::Downloader
  def self.download name, url
    new.download(name, url)
  end

  def download name, url
    download_episode(name, url)
  end
  
  private

  def download_episode name, url, path = nil
    progress_bar = nil

    download = open(url,
      content_length_proc: proc { |total| 
        progress_bar = ProgressBar.new("Download", total)
      },
      progress_proc: proc { |step|
        progress_bar.set(step)
      }
    )

  end
end
