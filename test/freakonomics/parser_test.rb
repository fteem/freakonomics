require_relative "../test_helper"

class Freakonomics::ParserTest < Minitest::Test
  def test_parse_parses_feed_xml_and_returns_list_of_hashes
    xml = File.read("./test/fixtures/all.xml")
    hashes = Freakonomics::Parser.parse(xml)
    assert_equal hashes.first, { :name=>"Am I Boring You?", :url=>"http://audio.wnyc.org/freakonomics_podcast/freakonomics_podcast102815.mp3", :publish_date=>"28 Oct 2015"}
  end
end
