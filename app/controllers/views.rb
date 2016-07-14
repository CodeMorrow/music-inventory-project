require 'pry'

MyApp.get "/add" do
	erb :"add_forms/add"
end

MyApp.get "/add_album" do
	erb :"add_forms/add_album"	
end

MyApp.get "/add_artist" do
	erb :"add_forms/add_artist"
end

# MyApp.get "/add_song" do
# 	erb :"add_forms/add_song"
# end

MyApp.get "/add_song" do
	@titleParam = params[:titleParam]
	@artistParam = params[:artistParam]
	@albumParam = params[:albumParam]
	@genreParam = params[:genreParam]
	@minuteParam = params[:minuteParam]
	@secondParam = params[:secondParam]
	@ratingParam = params[:ratingParam]

	@song = Song.new(@titleParam,@artistParam,@albumParam,@genreParam,@minuteParam,@secondParam,@ratingParam)
	songinfo = @song.songinfo

	erb :"add_forms/add_song", :locals => {'songinfo' => songinfo}
end


MyApp.get "/"  do
	erb :"/home"
end

MyApp.get "/songs"  do
	# binding.pry
	@songstr = songinfo()
	songAdd2File(songstr)
    erb :"/songs"
end

MyApp.get "/albums"  do
	erb :"/albums"
end

MyApp.get "/artists"  do
	erb :"/artists"
end

# ---- Controls for add forms below ----

# MyApp.get "/add_song" do
# 	erb :"add_forms/add_song"
# end

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
	
	if songinfo == "||||||||||||||"
	else
		songAdd2File(songinfo)
	end

	erb :"add_forms/add_song", :locals => {'songinfo' => songinfo}
end