require_relative 'secret.rb'
require 'httparty'
require 'pry'



#
#
#
#
#
def getArtistInfo(artist)
  return HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&api_key=#{API_KEY}&artist=#{artist}&format=json")
end


#
#
#
#
#
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
		albumdata["error"]["message"]
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
		albumdata["error"]["message"]
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
		albumdata["error"]["message"]
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
		albumdata["error"]["message"]
	else
		albumdata["album"]["name"]
	end
end