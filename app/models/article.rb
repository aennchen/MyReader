class Article < ActiveRecord::Base
	belongs_to :available_source
  has_many :ratings

	#sqlite
	scope :today, where("DATE(updated_at) > DATE('now', '-1 day')")
  #mysql:
	#scope :today, where('updated_at > DATE_SUB(NOW(), INTERVAL 1 DAY)')
  def self.find_by_category category, limit=20, offset=0
    #available_sources = AvailableSource.where(id: @user_categories)
    #articles = Article.where(available_source_id: @available_sources)
    Article.where(available_source_id: category.available_sources)
  end
end
