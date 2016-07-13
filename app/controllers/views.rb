require 'pry'

MyApp.get "/"  do
	erb :"/home"
end

MyApp.get "/songs"  do
	    # binding.pry

	# Call method to open and parse the 
    @music_file = File.read("music_db.txt","||")
    # @music_file.close
    erb :"/songs"
end

MyApp.get "/albums"  do
	erb :"/albums"
end

MyApp.get "/artists"  do
	erb :"/artists"
end
