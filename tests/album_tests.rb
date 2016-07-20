# Unit tests go here. You can start with:

ruby
require 'test_helper'

class SomeClassTest < Minitest::Test
  def setup
    super
    
    # This setup will automatically be run before each test below.
  end

  # Your tests are defined here. Tests must be contained in a method
  # that begins with test_ or it won't work. An example test:

  def test_letter_x
    assert_equal("X", "x".upcase)
  end


  def test_albuminfo
  		artist = "Led Zeppelin"
  		album = "Led Zeppelin III"
    assert_equal("HTTParty.get(\"http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=Led Zeppelin&album=Led Zeppelin III&format=json'\")", getAlbumInfo(artist,album))
  end


  def test_
    assert_equal("X", "x".upcase)
  end
end
