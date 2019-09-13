class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_url
    
  end

  def index
    @posts = Post.all
    @user = User.all
  end

  def update

  end

  private
    def post_params
      params.require(:post).permit(:message)
    end
end
