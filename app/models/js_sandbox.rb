# sandbox


# # 1. Create test file
# open('music_db.txt', 'w') { |z|
#   #z << "Artist||Album Title||Genre||Release Year||Song||Length||Song Rating||Album Rating\n"
#   z << "General Fuzz||Soulful||Go Inward||6:03||3||7\n"
#   z << "General Fuzz||Soulful||Starry||3:54||10||7\n"
#   z << "General Fuzz||Soulful||2nd Thoughts||4:26||9||7\n"
#   z << "General Fuzz||Soulful||Walking Home||4:28||10||7\n"
#   z << "General Fuzz||Soulful||Fuzzy Prayer||2:07||8||7\n"
#   z << "General Fuzz||Soulful||Goodbyes||3:42||8||7\n"
# }

# delSong = 'Walking Home'
# delAlbum = "Soulful"


# # 2. Create md array from file
# mda1 = File.foreach("music_db.txt").map {|line| line.split("||")}


# #3. Step through and compare rows to either
# z=0
# open('music_db.txt', 'w')
# mda1.each do |i|
# 	sub_a = mda1[z].join("||").to_s
	
# 	if sub_a.include? "#{delSong}"
# 	else
# 		eval_a = sub_a 
# 		puts eval_a
# 		# File.open('music_db.txt', 'w') do |z| eval_a.foreach{|line| z.puts(line)} end
# 		open('music_db2.txt', 'a') {|a| a << "#{eval_a}"}
# 	end
# 	z=z+1
	
# end 