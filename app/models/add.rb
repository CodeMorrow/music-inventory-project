class Song
	def initialize(title,artist,album,genre,length,rating)
		@title = title
		@artist = artist
		@album = album
		@genre = genre
		@length = length
		@rating = rating
	end

	def songinfo
		return "#{@title}||#{@artist}||#{@album}||#{@genre}||#{@length}||#{@rating}"
	end
end


song = Song.new("title","artist","album","genre","length","rating")
songfile = song.songinfo



# Function adds the string being passed through the songfile variable into the 
def songAdd2File(songfile)
	File.open('music_db.txt', 'a') {|z| z.puts "#{songfile}" }
end