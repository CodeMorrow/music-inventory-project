def similarArtists(artist)
	artistinfo = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getsimilar&artist=#{artist}&api_key=#{API_KEY}&format=json")
	return artistinfo
end

def similarArtistUrls(similarartistsarray)
	artisturls = Array.new
	if similarartistsarray["error"] != 6
		similarartistsarray["similarartists"]["artist"].each do |x|
			url = x["url"]
			artisturls.push(url)
		end
	end
	return artisturls
end

def similarArtistNames(similarartistsarray)
	artistnames = Array.new
	 if similarartistsarray["error"] != 6
	 	similarartistsarray["similarartists"]["artist"].each do |x|
			name = x["name"]
			artistnames.push(name)
		end
	end
	return artistnames
end

def similarArtistImages(similarartistsarray)
	artistimages = Array.new
	if similarartistsarray["error"] != 6
		similarartistsarray["similarartists"]["artist"].each do |x|
			image = x["image"][2]["#text"]
			artistimages.push(image)
		end
	end
	return artistimages
end

def topAlbums(artist)
	artistinfo = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{artist}&api_key=#{API_KEY}&format=json")
	return artistinfo
end