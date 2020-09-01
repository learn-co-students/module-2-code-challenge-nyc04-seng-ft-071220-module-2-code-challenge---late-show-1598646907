# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all

require 'csv'

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

app_1 = Appearance.create(guest_id: 274, episode_id: 1, rating: 5)
app_2 = Appearance.create(guest_id: 275, episode_id: 2, rating: 4)
app_3 = Appearance.create(guest_id: 276, episode_id: 3, rating: 3)
app_4 = Appearance.create(guest_id: 276, episode_id: 5, rating: 2)
app_5 = Appearance.create(guest_id: 278, episode_id: 3, rating: 1)
app_6 = Appearance.create(guest_id: 279, episode_id: 6, rating: 3)
app_7 = Appearance.create(guest_id: 280, episode_id: 7, rating: 2)

puts "Done Seeding!!!!"