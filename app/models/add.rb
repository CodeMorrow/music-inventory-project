class Song
	def initialize(title,artist,album,genre,minute,second,rating)
		@title = title
		@artist = artist
		@album = album
		@genre = genre
		@lengthmin = minute
		@lengthsec = second
		@rating = rating
	end

	def songinfo
		return "#{@title}||#{@artist}||#{@album}||#{@genre}||#{@lengthmin}||#{@lengthsec}||#{@rating}"
	end
end


