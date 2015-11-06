class Freakonomics::Reporter
  def self.download file_name
    STDOUT.puts "Downloading Episode: \"#{file_name}\"..."
  end

  def self.downloaded file_name
    STDOUT.puts "Episode: \"#{file_name}\" downloaded."
  end

  def self.all
    STDOUT.puts "Downloading ALL Episodes..."
  end

  def self.not_found
    STDOUT.puts "Episode not found."
  end
end
