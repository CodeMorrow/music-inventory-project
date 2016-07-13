# @song_title
# @album_title
# @artist_name
# @song_length
# @album_rating
# @song_rating
# @genre



# If file exists, do nothing. Otherwise, create the music_db file with the first row being headers.
def createFileWithHeader 
  if File.exist?("music_db.txt")
  else
  open('music_db.txt', 'w') { |z|
  z << "Artist||Album Title||Genre||Release Year||Song||Length||Song Rating||Album Rating\n"
  }
  end 
end


# Create an array of each line in the file as a variable.
def createFileArray
  z = File.foreach('music_db.txt').map { |line| line.split("||") } 
  return z 
end

# Assign variable to hold array created from file.
@x = createFileArray()

# Create variable that has the music_db file 
@x_no_h = @x.drop(1)

# Create groupings by each array element. 
@grouped = @x_no_h.group_by{|z| z[0]}.values


# Explicit html string for table header
@tbl_header = 
  "<thead><tr>
  <th>Artist</th> <th>Album Title</th> <th>Genre</th>  <th>Release Yr</th> 
  <th>Song</th>  <th>Length</th> <th>Song Rating</th> <th>Album Rating</th> 
  </tr></thead>
  <tbody>"

def createHtmlTbl(@grouped, @tbl_header)
  table = grouped.map do |portion|

    "<table>\n" << tbl_header << "\n<tr>" << portion.map do |column|

      "<td>" << column.map do |element|

        element.to_s

      end.join("</td><td>") << "</td>"

    end.join("</tr>\n<tr>") << "</tr>\n</tbody>\n</table>\n"

  end.join("\n")

  return table
end
