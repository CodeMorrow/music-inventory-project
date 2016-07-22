require 'json'

MyApp.get "/api" do
	arraytosearch = arrayToSearch()

	return arraytosearch.to_json
end