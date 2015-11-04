require_relative "test_helper"

class FreakonomicsTest < Minitest::Test
  def test_version_number_presence
    refute Freakonomics::VERSION == nil
  end
end
