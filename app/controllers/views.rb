require 'pry'

MyApp.get "/"  do
	erb :"/home"
end


MyApp.get "/songs" do
	x = createFileArray()
 	erb :"/songs", :locals => {'x' => x}
end


MyApp.get "/albums" do
	arraytosearch = arrayToSearch()
	albumarray = returnAlbums(arraytosearch)
	erb :"/albums", :locals => {'albumarray' => albumarray}
end

MyApp.post "/albums" do
	@albumsearch = params[:albumSearchParam]
	@arraytosearch = arrayToSearch()

	searchresult = searchResult(@albumsearch,@arraytosearch)

	erb :"/searchresults", :locals => {'searchresult' => searchresult}

end

MyApp.get "/artists" do
	arraytosearch = arrayToSearch()
	artistarray = returnArtists(arraytosearch)
	erb :"/artists", :locals => {'artistarray' => artistarray}
end


MyApp.post "/artists" do
	@artistsearch = params[:artistSearchParam]
	@arraytosearch = arrayToSearch()

	searchresult = searchResult(@artistsearch,@arraytosearch)

	erb :"/searchresults", :locals => {'searchresult' => searchresult}

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

	x = createFileArray()

  	erb :"/songs", :locals => {'x' => x}

end

MyApp.get "/add_song" do

	createFileWithHeader

	erb :"add_forms/add_song"

end

# ---- Controls for delete forms below ----

MyApp.get "/delete" do
	erb :"/add_forms/delete_song"
end


MyApp.post "/delete" do
	@songdelete = params[:songdeleteParam]
  @artistdelete = params[:artistdeleteParam]
  @albumdelete = params[:albumdeleteParam]

  @delete = ""

  if @songdelete != ""
  	@delete = @songdelete
  elsif @artistdelete != ""
  	@delete = @artistdelete
  elsif @albumdelete != ""
  	@delete = @albumdelete
  end

  @arraytosearch = arrayToSearch()

  @allbutdeleted = allButDeleted(@delete,@arraytosearch)

  deleteResultToFile(@allbutdeleted)

 	x = createFileArray()
 	erb :"/songs", :locals => {'x' => x}

end


