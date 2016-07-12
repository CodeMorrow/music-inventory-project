MyApp.get "/"  do
	erb :"/home"
end

MyApp.get "/songs"  do
	erb :"/songs"
end

MyApp.get "/albums"  do
	erb :"/albums"
end

MyApp.get "/artists"  do
	erb :"/artists"
end