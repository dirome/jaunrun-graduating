class CommentsController < ApplicationController
  #def create
  #	@post = Post.find(params[:post][:id])
   # @comment.name = current_runner
  #	@comment = @post.comments.create(params[:comment].permit(:body))
#
 # 	redirect_to post_path(@post)
 # end

 def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
 end



# 	def create
 #		@post = Post.find(params[:post][:id])
 #		@comment = @post.comments.new(params[:comment][:body])
 #		@comment.name = current_runner
#
 #		redirect_to "index"
  #  end
end
