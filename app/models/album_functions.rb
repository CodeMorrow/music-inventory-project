require_relative 'secret.rb'
require 'httparty'
require 'pry'



#
#
# artist - provides the artist name from the songs table using a query string parameter.
#
# Returns an HTTParty method used to make an artist.getinfo request to the last.fm API.
def getArtistInfo(artist)
  return HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&api_key=#{API_KEY}&artist=#{artist}&format=json")
end


#
#
# artist, album - provides the artist name and ablum title from the songs table using query string parameters.
#
# Returns an HTTParty method used to make an album.getinfo request to the last.fm API.
def getAlbumInfo(artist,album)
  return HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=#{artist}&album=#{album}&format=json")
end


#
#
#
#
#
def getAlbumUrl(albumdata)
	if albumdata["error"] == 6
	else
		albumdata["album"]["url"]
	end
end


#
#
#
#
#
def getAlbumImage(albumdata)
	if albumdata["error"] == 6
	else
		albumdata["album"]["image"][2]["#text"]
	end
end


#
#
#
#
#
def getAlbumArtist(albumdata)
	if albumdata["error"] == 6
	else
		albumdata["album"]["artist"]
	end
end


#
#
#
#
#
def getAlbumTitle(albumdata)
	if albumdata["error"] == 6
	else
		albumdata["album"]["name"]
	end
end