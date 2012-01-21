class ArticlesController < ApplicationController
  before_filter :authenticate_user! 

	def frontpage
		
    @articles = Article.find(:all, :order => 'pub_date DESC', :limit => 10)
		@categories = Category.find(:all)

    #css id für categories erzeugen
	end

  def redirect
    a = Article.find(params[:id])
    Rating.click a, current_user

    redirect_to a.url
  end

end
