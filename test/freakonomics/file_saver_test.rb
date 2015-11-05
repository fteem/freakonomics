require_relative '../test_helper'
class Freakonomics::FileSaverTest < Minitest::Test
  def setup
    @file = StringIO.new("whatever")
  end

  def test_creates_a_file_from_path
    Freakonomics::FileSaver.save!("test", @file)
    assert File.exists?("./test.mp3") == true
  end

  def test_creates_directories_from_path
    Freakonomics::FileSaver.save!("test", @file, "./tmp/")
    assert File.exists?("./tmp/test.mp3") == true
  end
end
