class Article < ActiveRecord::Base
	belongs_to :source
	
	#sqlite
	scope :today, where("DATE(updated_at) > DATE('now', '-1 day')")

	#mysql:
	#scope :today, where('updated_at > DATE_SUB(NOW(), INTERVAL 1 DAY)')
end
