MyApp.get "/add" do
	erb :"add_forms/add"
end

MyApp.get "/add_album" do
	erb :"add_forms/add_album"	
end

MyApp.get "/add_artist" do
	erb :"add_forms/add_artist"
end

MyApp.get "/add_song" do
	erb :"add_forms/add_song"
end