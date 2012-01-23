class AvailableSource < ActiveRecord::Base
	has_many :articles
  has_many :user_sources
end
