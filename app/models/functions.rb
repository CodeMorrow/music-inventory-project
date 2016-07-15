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
   }
   end 
 end



 # Create an array of each line in the file as a variable.
 def createFileArray
     y = File.foreach("music_db.txt").map { |line| line.split("||") }
     grouped = y.group_by{|x| x[0]}.values
     return grouped 
   # end
 end
>>>>>>> 523d56dbcf3b26a805c4668d8b330b50e6bd1dff

def searchresult(search)
  @filearray = createfilearray()
  @searchresults = Array.new
  @filearray.each do |x|
    if x.include?(search)
      @searchresult.push(x)
    end
  end
  return @searchresults
end
