# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
meet_ups= [{ title: 'Lunar Golfing', description: 'Super fun activity to play with your aliens', location: 'Moon'},
  { title: 'venus soccer', description: 'Kicking the ball', location: 'Mercury'}]

meet_ups.each do |attributes|
  Meetup.create(attributes)
end
