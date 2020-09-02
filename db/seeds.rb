# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Episode.destroy_all
# Appearance.destroy_all
# Guest.destroy_all
Episode.reset_pk_sequence
Appearance.reset_pk_sequence
Guest.reset_pk_sequence

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


jackie = Guest.create!(name:"Jackie", occupation:"Martial Artist")
roger = Guest.create!(name: "Roger", occupation: "Tennis player")

ap1 = Appearance.create!(rating: 4, guest: jackie, episode_id:1)
ap2 = Appearance.create!(rating: 3, guest: roger, episode_id:3)

100.times do 
  Appearance.create!(rating: rand(1..5), guest_id: rand(1..100), episode_id:rand(1..40))
end