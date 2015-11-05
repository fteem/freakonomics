class Freakonomics::FileSaver
  def self.save!(episode_name, episode_file, path = "./")
    full_path = path + "/" + episode_name + ".mp3"
    if File.directory?(path)
      IO.copy_stream(episode_file, full_path)
    else
      Dir.mkdir(path)
      IO.copy_stream(episode_file, full_path)
    end
  end
end
