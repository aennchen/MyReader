class Category < ActiveRecord::Base
   belongs_to :user
   has_many :user_sources
   has_many :available_sources, through: :user_sources
   has_many :articles, through: :available_sources #double-hop through - does this work?
end
