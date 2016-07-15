class Song
  def initialize(title,artist,album,genre,minute,second,songrating,albumrating)
    @title = title #.split.map { |i| i.capitalize }.join(' ')
    @artist = artist #.split.map { |i| i.capitalize }.join(' ')
    @album = album #.split.map { |i| i.capitalize }.join(' ')
    @genre = genre
    @lengthmin = minute
    @lengthsec = second
    @songrating = songrating
    @albumrating = albumrating
  end


  def songinfo
      return "#{@title}||#{@artist}||#{@album}||#{@genre}||#{@lengthmin}||#{@lengthsec}||#{@songrating}||#{@albumrating}"
  end
end