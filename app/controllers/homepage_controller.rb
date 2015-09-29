class HomepageController < ApplicationController

def feed
  if logged_in?
  follower_ids = current_user.following_users.pluck(:id)
  all_ids = follower_ids << current_user.id
  @feed= Post.where(user_id: all_ids).order("posted_at DESC")
end
end


  def index
    @post = current_user.posts.new 
    @users = User.all
    feed
  end



  def show
    @user = user.find(params[:id])
  end
end
