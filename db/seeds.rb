# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n = Category.create do |c|
	c.name = 'News'
end

t = Category.create do |c|
	c.name = 'Tech'
end

p = Category.create do |c|
	c.name = 'Politics'
end

Source.create do |s| 
	s.title = 'tagesschau'
	s.url = 'http://www.tagesschau.de/xml/rss2'
	s.category = n
end

Source.create do |s|
	s.title = 'taz'
	s.url = 'http://www.taz.de/rss.xml'
	s.category = n
end

Source.create do |s|
	s.title = 'Netzpolitik'
	s.url = 'http://netzpolitik.org/feed/'
	s.category = t
end

Source.create do |s|
	s.title = 'USA erklaert'
	s.url = 'http://usaerklaert.wordpress.com/feed/'
	s.category = p
end


# Create a default user
User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')