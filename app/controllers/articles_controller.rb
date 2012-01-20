class ArticlesController < ApplicationController
  before_filter :authenticate_user! 

	def frontpage
		@articles = Article.find(:all, :order => 'updated_at DESC', :limit => 10)
	end

  def redirect
    a = Article.find(params[:id])
    # Der User hat auf diesen Artikel geklickt
    redirect_to a.url
  end

end
