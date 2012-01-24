class ArticlesController < ApplicationController
  before_filter :authenticate_user! 

	def frontpage		
		@user_categories = Category.where(user_id: current_user)
    @articles = Hash.new

    @user_categories.each do |uc|
      @articles[uc.id] = Article.find_by_category(uc)
    end
	end

  def redirect
    a = Article.find(params[:id])
    Rating.click a, current_user

    redirect_to a.url
  end
end
