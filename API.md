The Music Inventory API allows you to access song, album, and artist information from the Music Inventory App.

Three types of information can be requested:


	-- Songs - /api/songs --
	
	Returns the following information for all songs stored in the Music Inventory in the JSON format:
	
		Name of song
		Artist
		Album
		Genre - chosen from a preset list of genres
		Length - minutes
		Length - seconds
		Album rating - chosen by user
		Song rating -  chosen by user
	
		Example:
	
		[["Since I've Been Loving You","Led Zeppelin","Led Zeppelin III","Rock","8","43","5","5\n"],["White Owl","Josh 	Garrels","Love And War And The Sea Between","Folk","5","5","5","5\n"],["The Rose","Acoustic 	Labs","Solos","Blues","5","3","4","5\n"],["Happy Birthday","Sumeet Jain","Greatest 	Hits","Blues","10","6","5","2\n"],["Gravity","John 	Mayer","Continuum","Blues","3","53","5","4\n"],["Tithemi","Sleeping Giant","Kingdom Days In An Evil 	Age","Rock","3","57","5","5\n"],["Ships In The Night","Mat Kearney","Young Love","Pop","4","30","5","5\n"],["Count 	On Me","Mat Kearney","Young Love","Rock","4","25","5","5\n"]]
	
	
	-- Artists - /api/artists --
	
	Returns a list of Artists stored in the Music Inventory in the JSON format:
	
		ex. ["Led Zeppelin","Josh Garrels","Acoustic Labs","Sumeet Jain","John Mayer","Sleeping Giant","Mat Kearney"]
	
	
	-- Albums - /api/albums --
	
	Returns the following Album information stored in the Music Inventory in the JSON format:
	
		Album name
		Artist
		Genre - chosen from a preset list of genres
		Album rating - chosen by user
	
		ex. [["Led Zeppelin III","Led Zeppelin","Rock","5\n"],["Love And War And The Sea Between","Josh 	Garrels","Folk","5\n"],["Solos","Acoustic Labs","Blues","5\n"],["Greatest Hits","Sumeet 	Jain","Blues","2\n"],["Continuum","John Mayer","Blues","4\n"],["Kingdom Days In An Evil Age","Sleeping 	Giant","Rock","5\n"],["Young Love","Mat Kearney","Pop","5\n"],["Young Love","Mat Kearney","Rock","5\n"]]
	


Data Sources:

	The Music Inventory accesses the Last.fm API to provide artist and album information.



