# @song_title
# @album_title
# @artist_name
# @song_length
# @album_rating
# @song_rating
# @genre



# open('music_db.txt', 'a+') { |f|
#   f.puts @song_title || @album_title
# } 

def createFileHeader
	if File.exists("music_db.txt") true {
		open("music-db.txt", 'a') { |z|
	} z.puts "Artist||Album Title||Genre||Release Year||Song||Length||Song Rating||Album Rating\n"
} 

		break
	else
end

# Write to file music_db.txt
def addToFile
open('music_db.txt', 'a+') { |z|
z << "Artist||Album Title||Genre||Release Year||Song||Length||Song Rating||Album Rating\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Eye Heart Knot||4:00||9||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Four Prophets||5:51||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Comfort Zone||6:03||8||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Mellow Drama||5:12||5||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Warm Steel||4:42||7||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Go Inward||6:03||3||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Starry||3:54||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Second Thoughts||4:26||9||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Walking Home||4:28||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Fuzzy Prayer||2:07||8||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Goodbyes||3:42||8||7\n"
}
end


def addToFile
end

def readFromFile
end


open('music_db.txt', 'w') { |z|
  z << "Artist||Album Title||Genre||Release Year||Song||Length||Song Rating||Album Rating\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Eye Heart Knot||4:00||9||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Four Prophets||5:51||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Comfort Zone||6:03||8||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Mellow Drama||5:12||5||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Warm Steel||4:42||7||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Go Inward||6:03||3||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Starry||3:54||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Second Thoughts||4:26||9||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Walking Home||4:28||10||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Fuzzy Prayer||2:07||8||7\n"
  z << "General Fuzz||Soulful Filling||Electronic||2009||Goodbyes||3:42||8||7\n"
}


# Create an array of each line in the file as a variable.
x = File.foreach('music_db.txt').map { |line| line.split("||") }

#Put each array contained in the whole-file array into its own set of variables 
# File.readlines("music_db.txt").each do |line|

# end


# h_pre = x[0] 
# puts x[1]
# header = $y(0).split("\n").first


x_no_h = x.drop(1)

grouped = x_no_h.group_by{|z| z[0]}.values

header = "<thead>
<tr>
<th>Artist</th> 
<th>Album Title</th> 
<th>Genre</th>  
<th>Release Yr</th> 
<th>Song</th>  
<th>Length</th> 
<th>Song Rating</th> 
<th>Album Rating</th> 
</tr> 
</thead>
<tbody>"

table = grouped.map do |portion|

  "<table class=\"sortable\">\n" << header << "\n<tr>" << portion.map do |column|

    "<td>" << column.map do |element|

      element.to_s

    end.join("</td><td>") << "</td>"

  end.join("</tr>\n<tr>") << "</tr>\n</tbody>\n</table>\n"

end.join("\n")

return table
