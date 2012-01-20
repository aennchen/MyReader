class Source < ActiveRecord::Base
	has_many :articles
  belongs_to :category
end
