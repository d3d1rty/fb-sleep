require 'date'
require 'csv'

# initialize hours hash
hours = Hash.new

# add 24 keys for each hour and set initial values to 0
for i in 0..23
  hours[i] = 0;
end

# initializes timestamps array
timestamps = Array.new

# reads timestamps file, extracts hour, and pushes onto array
File.foreach("timestamps.txt") do |line|
  hour = DateTime.strptime(line,'%s').strftime("%H")
  timestamps.push(hour.to_i)
end

# increments the number of posts for each hour
timestamps.each do |hour|
  hours[hour] += 1
end

# displays hours with number of posts
puts '[*] Here is the frequency hash:'
hours.each do |hour, posts|
  puts "#{hour.to_s.rjust(2)} => #{posts}"
end

# writes to csv file
CSV.open("fb-sleep.csv", "wb") do |row|
  row << ["Hour", "Post"]
  hours.each do |hour, posts|
    row << ["#{hour}", "#{posts}"]
  end
end
puts '[*] Done writing fb-sleep.csv!'

