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
# Create variable that has the music_db info, minus header
# Create groupings by each array element.

def createFileArray
  z = File.foreach('music_db.txt').map { |line| line.split("||") }
  z_no_h = z.drop(1)
  grouped = z.group_by{|x| x[0]}.values
  return grouped 
end

# # Assign variable to hold array created from file.
# @x = createFileArray()

# if !@x.nil?
#   # Create variable that has the music_db file 
#   @x_no_h = @x.drop(1)

#   # Create groupings by each array element. 
#   @grouped = @x_no_h.group_by{|z| z[0]}.values
# end

# TODO ---------------- Everything below this line should be
#                       handled in the view.

# Explicit html string for table header
@tbl_header = 
  "<thead>
    <tr>
    <th>Title</th>   <th>Artist</th>    <th>Album</th>        <th>Genre</th>
    <th>Minutes</th>  <th>Seconds</th>  <th>Song Rating</th>  <th>Album Rating</th> 
    </tr>
  </thead>
  <tbody>"



def createHtmlTbl(grouped, tbl_header)

  table = grouped.map do |portion|

    "<table>\n" << tbl_header << "\n<tr>" << portion.map do |column|

      "<td>" << column.map do |element|

        element.to_s

      end.join("</td><td>") << "</td>"

    end.join("</tr>\n<tr>") << "</tr>\n</tbody>\n</table>\n"

  end.join("\n")

  return table
end
