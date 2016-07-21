# # Unit tests go here. You can start with:

# require 'test_helper'

# class SomeClassTest < Minitest::Test
#   def setup
#     super
    
#     # This setup will automatically be run before each test below.
#   end

#   # Your tests are defined here. Tests must be contained in a method
#   # that begins with test_ or it won't work. An example test:

#   def test_letter_x
#     assert_equal("X", "x".upcase)
#   end


#   def test_album_info
#   	artist = "Led Zeppelin"
#   	album = "Led Zeppelin III"

# 	assert_equal("HTTParty.get(\"http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=Led Zeppelin&album=Led Zeppelin III&format=json'\")", getAlbumInfo(artist,album))
#   end


#   def test_album_img
#   	albumdata = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=Led Zeppelin&album=Led Zeppelin III&format=json")

#     assert_kind_of(String, getAlbumImage(albumdata))
#   end


#   def test_album_url
#   	albumdata = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=Led Zeppelin&album=Led Zeppelin III&format=json")

# 	assert_equal("https://www.last.fm/music/Led+Zeppelin/Led+Zeppelin+III", getAlbumUrl(albumdata))
#   end


#   def test_album_artist
#   	albumdata = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=Led Zeppelin&album=Led Zeppelin III&format=json")

# 	assert_equal("Led Zeppelin", getAlbumArtist(albumdata))
#   end


#   def test_album_title
#   	albumdata = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=John Mayer&album=Continuum&format=json")

# 	assert_equal("Continuum", getAlbumTitle(albumdata))
#   end

# end
