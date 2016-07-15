# TODO - Move into its own file.
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



  # Function adds the string being passed through the songfile variable into the 
  def songAdd2File(songfile)
    File.open('music_db.txt', 'a') {|z| z.puts "#{songfile}" }
  end



  # If file exists, do nothing. Otherwise, create the music_db file with the first row being headers.
  def createFileWithHeader 
    # TODO - See about using !File.exist?("music_db.txt")
    if File.exist?("music_db.txt")
    else
    open('music_db.txt', 'w') { |z|
      z << "Title||Artist||Album||Genre||Minutes||Seconds||Song Rating||Album Rating\n"
    }
    end 
  end



  # Create an array of each line in the file as a variable.
  def createFileArray
      y = File.foreach("music_db.txt").map { |line| line.split("||") }
      # y_no_h = y.drop(1)
      grouped = y.group_by{|x| x[0]}.values
      return grouped 
    # end
  end



