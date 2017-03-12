class PostsController < ApplicationController

  def housekeeper 
      @post = Post.find_by(tags: "houekeeping")
  end 
 
  def cooking
    @post = Post.all
    @post = @post.tags.where(name: "cooking")
  end

  def entertainment
    @post = Post.tags.where(name: "entertainment")
  end

  def games
    @post = Post.tags.where(name: "games")
  end

  def clerk
    @post = Post.tags.where(name: "clerk")
  end

  def others
    @post = Post.tags.where(name: "others")
  end


  def new
  	@post = Post.new
  end

  def create
  	@post = current_juan.posts.new(post_params)
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
  	@post = Post.all
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy()

    redirect_to 'index' 
  end

   def show
    @post = Post.find(params[:id])
   #  @postco = Post.tags.where(name: "cooking")
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title,:description,:location, :all_tags))
      redirect_to '/posts/'
    else
      render 'edit'
    end

  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :location, :all_tags)
  end

  
end
