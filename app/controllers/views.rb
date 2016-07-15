require 'pry'

MyApp.get "/"  do
	erb :"/home"
end

MyApp.get "/songs" do
	@x = createFileArray()

	# @tbl_header = "<thead><tr>
 #    <th>Title</th>   <th>Artist</th>    <th>Album</th>        <th>Genre</th>
 #    <th>Minutes</th>  <th>Seconds</th>  <th>Song Rating</th>  <th>Album Rating</th> 
 #    </tr></thead><tbody>"
	
	# # binding.pry
	# if File.exist?("music_db.txt")
	#   table = @x.map do |portion|
	# 	    "<table>\n" << @tbl_header << "\n<tr>" << portion.map do |column|
	# 	      "<td>" << column.map do |element|
	# 	        element.to_s
	# 	      end.join("</td><td>") << "</td>"
	# 	    end.join("</tr>\n<tr>") << "</tr>\n</tbody>\n</table>\n"
	# 	  end.join("\n")
	#    table
	# end

  erb :"/songs" #, :locals => {:table => params[:table]}
end


MyApp.get "/albums" do
	erb :"/albums"
end

MyApp.get "/artists" do
	erb :"/artists"
end

# ---- Controls for add forms below ----

MyApp.get "/add_song" do
	
	createFileWithHeader

	@titleParam = params[:titleParam]
	@artistParam = params[:artistParam]
	@albumParam = params[:albumParam]
	@genreParam = params[:genreParam]
	@minuteParam = params[:minuteParam]
	@secondParam = params[:secondParam]
	@ratingParamS = params[:ratingParamS]
	@ratingParamA = params[:ratingParamA]

	@song = Song.new(@titleParam,@artistParam,@albumParam,@genreParam,@minuteParam,@secondParam,@ratingParamS,@ratingParamA)
	
	songinfo = @song.songinfo
	
	# TODO - Figure out why != doesn't work.
	if songinfo == "||||||||||||||"
	else
		songAdd2File(songinfo)
	end

	erb :"add_forms/add_song", :locals => {'songinfo' => songinfo}
end