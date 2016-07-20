def similarArtists(artist)
	artistinfo = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getsimilar&artist=#{artist}&api_key=#{API_KEY}&format=json")
	return artistinfo
end