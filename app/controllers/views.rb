require 'pry'

MyApp.get "/"  do
	erb :"/home"
end

MyApp.get "/songs" do
	if !File.exists?("music_db.txt")
		createFileWithHeader
	end

	@grouped_n = createFileArray()
	@tbl_header = "<thead><tr><th>Artist</th><th>Album Title</th><th>Genre</th><th>Song</th><th>Minutes</th><th>Seconds</th><th>Song Rating</th><th>Album Rating</th></tr></thead><tbody>"

	@table2 = @grouped_n.map do |portion|
	"<table>\n" << @tbl_header << "\n<tr>" << portion.map do |column|
	  "<td>" << column.map do |element|
	    element.to_s
	  end.join("</td><td>") << "</td>"
	end.join("</tr>\n<tr>") << "</tr>\n</tbody>\n</table>\n"
	end.join("\n")

	# puts @table
  erb :"/songs"
end


MyApp.get "/albums" do
	erb :"/albums"
end

MyApp.get "/artists" do
	erb :"/artists"
end

# ---- Controls for add forms below ----

MyApp.post "/add_song" do

	@titleParam = params[:titleParam]
	@artistParam = params[:artistParam]
	@albumParam = params[:albumParam]
	@genreParam = params[:genreParam]
	@minuteParam = params[:minuteParam]
	@secondParam = params[:secondParam]
	@rateSongParam = params[:rateSongParam]
	@rateAlbumParam = params[:rateAlbumParam]

	@song = Song.new(@titleParam,@artistParam,@albumParam,@genreParam,@minuteParam,@secondParam,@rateSongParam,@rateAlbumParam)
	
	songinfo = @song.songinfo
	
	# TODO - Figure out why != doesn't work.
	if songinfo == "||||||||||||||"
	else
		songAdd2File(songinfo)
	end

	erb :"/songs"

end

MyApp.get "/add_song" do

	createFileWithHeader

	erb :"add_forms/add_song"

end


