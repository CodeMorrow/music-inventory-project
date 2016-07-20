require 'test_helper'
require app/models/artists_functions.rb

class artistsFunctionsTests < Minitest::Test

  def setup
    super
    
    # This setup will automatically be run before each test below.
  end

  # Your tests are defined here. Tests must be contained in a method
  # that begins with test_ or it won't work. An example test:

  def test_similarArtists
  	similarartistsarray = similarArtists("Beck")
    refute_nil(similarartistsarray)
  end

  def test_topAlbums
  	topalbumsarray = topAlbums("Beck")
    refute_nil(topalbumsarray)
  end

  def test_topTracks
  	toptracksarray = topTracks("Beck")
    refute_nil(toptracksarray)
  end
end
