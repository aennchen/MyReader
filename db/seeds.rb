# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create a default user
user_admin = User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')

cat_news = Category.create do |c|
	c.name = 'News'
	c.user = user_admin
end

cat_tech = Category.create do |c|
	c.name = 'Tech'
	c.user = user_admin
end

cat_pol = Category.create do |c|
	c.name = 'Politics'
	c.user = user_admin
end

s1 = AvailableSource.create do |s| 
	s.title = 'tagesschau'
	s.url = 'http://www.tagesschau.de/xml/rss2'
end

s2 = AvailableSource.create do |s|
	s.title = 'taz'
	s.url = 'http://www.taz.de/rss.xml'
end

s3 = AvailableSource.create do |s|
	s.title = 'Netzpolitik'
	s.url = 'http://netzpolitik.org/feed/'
end

s4 = AvailableSource.create do |s|
	s.title = 'USA erklaert'
	s.url = 'http://usaerklaert.wordpress.com/feed/'
end

UserSource.create( category: cat_news, available_source: s1 )
UserSource.create( category: cat_news, available_source: s2 )
UserSource.create( category: cat_tech, available_source: s3 )
UserSource.create( category: cat_pol, available_source: s4 )

