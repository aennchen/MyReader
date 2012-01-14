class ArticlesController < ApplicationController

	def frontpage
		@articles = Article.today.find(:all, :order => 'updated_at DESC', :limit => 10)
	end

end
