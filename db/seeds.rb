# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Source.create do |s| 
	s.title = 'tagesschau'
	s.url = 'http://www.tagesschau.de/xml/rss2'
end

Source.create do |s|
	s.title = 'taz'
	s.url = 'http://www.taz.de/rss.xml'
end

# Create a default user
User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')