a = [{"name"=>"Immigrant Song",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Immigrant+Song",
  "duration"=>"146",
  "@attr"=>{"rank"=>"1"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Friends",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Friends",
  "duration"=>"235",
  "@attr"=>{"rank"=>"2"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Celebration Day",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Celebration+Day",
  "duration"=>"209",
  "@attr"=>{"rank"=>"3"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Since I've Been Loving You",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Since+I%27ve+Been+Loving+You",
  "duration"=>"444",
  "@attr"=>{"rank"=>"4"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Out on the Tiles",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Out+on+the+Tiles",
  "duration"=>"244",
  "@attr"=>{"rank"=>"5"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Gallows Pole",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Gallows+Pole",
  "duration"=>"298",
  "@attr"=>{"rank"=>"6"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Tangerine",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Tangerine",
  "duration"=>"192",
  "@attr"=>{"rank"=>"7"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"That's the Way",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/That%27s+the+Way",
  "duration"=>"338",
  "@attr"=>{"rank"=>"8"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Bron-Y-Aur Stomp",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Bron-Y-Aur+Stomp",
  "duration"=>"260",
  "@attr"=>{"rank"=>"9"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}},
 {"name"=>"Hats Off to (Roy) Harper",
  "url"=>"https://www.last.fm/music/Led+Zeppelin/_/Hats+Off+to+(Roy)+Harper",
  "duration"=>"221",
  "@attr"=>{"rank"=>"10"},
  "streamable"=>{"#text"=>"0", "fulltrack"=>"0"},
  "artist"=>
   {"name"=>"Led Zeppelin",
    "mbid"=>"d6e0e274-8e19-44ce-b5b2-52c12f8a674a",
    "url"=>"https://www.last.fm/music/Led+Zeppelin"}}]


b = []
z = 0

a.each do |i|
	b.push(album[z]["name"])
    z=z+1
end

puts b
# binding.pry