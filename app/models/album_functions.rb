
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
		albumdata["album"]["image"][3]["#text"]
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


#
#
#
#
#
def getAlbumTracks(trackarray)
	b = []
	z = 0
	trackarray.each do |i|
		b.push(trackarray[z]["name"])
	    z=z+1
	end
	return b
end



