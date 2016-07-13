MyApp.get "/add" do
	erb :"add_forms/add"
end

MyApp.get "/add/album" do
	erb :"add_forms/add_album"	
end

MyApp.get "/add/artist" do
	erb :"add_forms/add_artist"
end

MyApp.get "/add/song" do
	erb :"add_forms/add_song"
end