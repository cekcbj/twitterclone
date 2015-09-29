class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

def new
  @post= Post.new

end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = "Tweet created"
      redirect_to root_url
    else
    render 'create'
  end
end

  def destroy
  end

  def post_params
    params.require(:post).permit(:tweet,:posted_at)
  end
end
