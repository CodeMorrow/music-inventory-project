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
 

# def searchResult(search, filearray)
#   @searchresults = Array.new
#   filearray.each do |x|
#     if x.include?(search)
#       @searchresults.push(x)
#     end
#   end
#   return @searchresults
# end

def arrayToSearch
  arraytosearch = Array.new
  File.foreach("music_db.txt").each do |x|
    x = x.split("||")
    arraytosearch.push(x)
  end
  return arraytosearch
end
  

def searchResult(search,arraytosearch)
  searchresults = Array.new
  arraytosearch.each do |x|
    if x.include?(search)
      searchresults.push(x)
    end
  end
  return searchresults
end

def allButDeleted(search,arraytosearch)
  searchresults = Array.new
  arraytosearch.each do |x|
    unless x.include?(search)
      searchresults.push(x)
    end
  end
  return searchresults
end

def deleteResultToFile(allButDeleted)
  @arraytofile = Array.new
  allButDeleted.each do |x|
    x = x.join("||")
    @arraytofile.push(x)
  end
  File.open('music_db.txt', 'w') do |z| 
    @arraytofile.each do |line|
      z.puts line 
    end
  end
end



