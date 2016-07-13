#Class that takes query string params. songinfo will return a string of song information, delineated by pipes
#that can be written to a file.

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



# Function adds the string being passed through the songfile variable into the 
def songAdd2File(songfile)
	File.open('music_db.txt', 'a') {|z| z.puts "#{songfile}" }
end
