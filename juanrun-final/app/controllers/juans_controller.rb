class JuansController < ApplicationController
  def profile
  	 @juan = Juan.find(params[:id])
  end

  	def delete
    @post = Post.find(params[:id])
    @post.destroy()

    redirect_to "/juans/<%=current_juan.id%>"
    end
end
