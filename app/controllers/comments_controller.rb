class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create!(user_params)
		redirect_to @article, :notice => "Comment created!"
	end

	private

	def user_params
      params.require(:comment).permit(:name, :content)
    end

end
