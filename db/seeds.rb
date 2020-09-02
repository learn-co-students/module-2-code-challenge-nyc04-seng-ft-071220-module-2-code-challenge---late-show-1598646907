# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Episode.destroy_all
Appearance.destroy_all


require 'csv'
# connecting all my seed data together , had to look this up. hmm
# i created some test seed data not sure what to do with this now? it shows up in the index page 
# however i need this seed to connect with my appearances? 

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end
 
date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end
#######guest
personOne= Guest.create(name:"Sam", occupation:"teacher")
personTwo= Guest.create(name:"Keanu Reeves", occupation:"My Lover")


#####episode
episodeOne = Episode.create(number: 9, date: 2020/23/6)
episodeTwo = Episode.create(number: 1, date: 2000/2/6)


####### appearnace
appearance = Appearance.create(rating: 2, guest_id: personOne.id, episode_id: episodeOne.id)
appearance = Appearance.create(rating: 100, guest_id: personTwo.id, episode_id: episodeTwo.id)