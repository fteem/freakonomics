class Freakonomics::Reporter
  def self.download file_name
    puts "Downloading Episode: \"#{file_name}\"..."
  end

  def self.all
    puts "Downloading ALL Episodes..."
  end

  def self.not_found
    puts "Episode not found."
  end
end
