class UsersController < ApplicationController
  before_action :user_signed_in?, only: %i[edit destroy]  

  def show
    @user = User.find(params[:id])
    @folders = @user.folders.all.page(params[:page]).per(6)
    @follow_count = @user.followings.count
    @follower_count = @user.followers.count
  end

  def follows
    @user = User.find(params[:id])
    @follow_list = @user.followings
    @follower_list = @user.followers
    @follow_count = @user.followings.count
    @follower_count = @user.followers.count
  end
end