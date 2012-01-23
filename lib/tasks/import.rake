require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
require 'readability'
require 'sanitize'
require 'pp'
require 'date'
require 'time'

desc "Imports articles from sources"
task :import => :environment do 
	AvailableSource.find(:all) do |s|
		content = "" # raw content of rss feed will be loaded here
		open(s.url) do |s| content = s.read end
		rss = RSS::Parser.parse(content, false)

		puts rss.channel.title + ':'

		rss.items.each do |i|
			
			a = Article.find_or_create_by_url(i.link) do |a|
				a.title = i.title
				a.url = i.link
				a.teaser = i.description
				a.available_source = s
				a.pub_date = i.date.to_datetime
			end
			puts ' - ' + a.title

		end

		puts ''

	end
end

def readability_teaser(url)
	r = nil
	open(url) do |s| r = Readability::Document.new(s.read) end
	Sanitize.clean(r.content).strip!.truncate(200, separator: ' ', omission: '')
end