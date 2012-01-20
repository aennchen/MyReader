class Rating < ActiveRecord::Base
   belongs_to :article
   belongs_to :user
   has_one :source, through: :article

   def self.click article, user
     if Rating.where(article_id: article.id, user_id: user.id).empty? then
       Rating.create(article: article, user: user, rating: 1)
     end
   end
end
