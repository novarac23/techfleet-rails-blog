class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params) 

    if comment.save
      redirect_to blog_post_path(comment.blog_post_id)
    end 
  end 

  private
    
    def comment_params
      params.require(:comment).permit(:title, :body, :blog_post_id)
    end
end
