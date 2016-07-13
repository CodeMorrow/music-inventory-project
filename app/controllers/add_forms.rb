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

MyApp.post "/add_song" do
	titleParam = params[:song]
	artistParam = params[:artist]
	albumParam = params[:album]
	genreParam = params[:genre]
	minuteParam = params[:minute]
	secondParam = params[:second]
	ratingParam = params[:rating]

	rb :add, :global => {'titleParam' => titleParam, 'artistParam' => artistParam, 'artistParam' => albumParam, 'genreParam' => genreParam, 'minuteParam' => minuteParam, 'secondParam' => secondParam, 'ratingParam' => ratingParam}
end