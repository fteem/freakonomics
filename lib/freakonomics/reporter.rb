class Freakonomics::Reporter
  def self.download file_name
    puts "Downloading Episode: \"#{file_name}\"..."
  end

  def self.downloaded file_name
    puts "Episode: \"#{file_name}\" downloaded."
  end

  def self.all
    puts "Downloading ALL Episodes..."
  end

  def self.not_found
    puts "Episode not found."
  end
end
