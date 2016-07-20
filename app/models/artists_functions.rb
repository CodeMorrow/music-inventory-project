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

def topAlbumUrls(topalbumsarray)
	albumurls = Array.new
	if topalbumsarray["error"] != 6
		topalbumsarray["topalbums"]["album"].each do |x|
			url = x["url"]
			albumurls.push(url)
		end
	end
	return albumurls
end

def topAlbumNames(topalbumsarray)
	albumnames = Array.new
	if topalbumsarray["error"] != 6
		topalbumsarray["topalbums"]["album"].each do |x|
			name = x["name"]
			albumnames.push(name)
		end
	end
	return albumnames
end

def topAlbumImages(topalbumsarray)
	albumimages = Array.new
	if topalbumsarray["error"] != 6
		topalbumsarray["topalbums"]["album"].each do |x|
			image = x["image"][2]["#text"]
			albumimages.push(image)
		end
	end
	return albumimages
end









def topTracks(artist)
	artistinfo = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=#{artist}&api_key=#{API_KEY}&format=json")
	return artistinfo
end

def topTrackUrls(toptracksarray)
	trackurls = Array.new
	if toptracksarray["error"] != 6
		toptracksarray["toptracks"]["track"].each do |x|
			url = x["url"]
			trackurls.push(url)
		end
	end
	return trackurls
end

def topTrackNames(toptracksarray)
	tracknames = Array.new
	if toptracksarray["error"] != 6
		toptracksarray["toptracks"]["track"].each do |x|
			name = x["name"]
			tracknames.push(name)
		end
	end
	return tracknames
end

def topTrackImages(toptracksarray)
	trackimages = Array.new
	if toptracksarray["error"] != 6
		toptracksarray["toptracks"]["track"].each do |x|
			image = x["image"][2]["#text"]
			trackimages.push(image)
		end
	end
	return trackimages
end








