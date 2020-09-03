require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

team_rocket = Cult.new("Team_Rocket", "Kanton", 1995, "To unite all people within our nation")
team_magma = Cult.new("Team_magma", "Hoenn", 2000, "Free Groudon")

jesse = Follower.new("Jesse", 25, "To stand by the evils of love and truth")
james = Follower.new("James", 25, "To protect the world from devastation")
giovani = Follower.new("Giovani", 40, "Capture all pokemon")

oath1 = BloodOath.new(team_rocket, jesse)
oath2 = BloodOath.new(team_rocket, james)

puts "team_magma can recruit new follower (giovani)"
puts oath3 = team_magma.recruit_follower(giovani)

puts "giovani can join team_rocket"
puts oath4 = giovani.join_cult(team_rocket)

puts "giovani can see all the bloodoaths he has done"
p giovani.blood_oaths == [oath3, oath4]

puts "giovani can see all the cults he is apart of"
p giovani.cults == [team_magma, team_rocket]

puts "Followers can see followers above age 26, expect just giovani"
p Follower.of_a_certain_age(26)

puts "team rocket population count should be 3"
p team_rocket.cult_population

puts "able to seach by name, expect team_rocket"
p Cult.find_by_name("Team_Rocket")

puts "able to seach by location, expect team_magma"
p Cult.find_by_location("Hoenn")

puts "able to seach by founding_year, expect team_rocket"
p Cult.find_by_founding_year(1995)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits