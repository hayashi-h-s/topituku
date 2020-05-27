class RelationshipsController < ApplicationController
  def create
    @follow = current_user.active_relationships.build(follower_id: params[:user_id])
    @user = User.find(params[:user_id])
    @follow_count = @user.followings.count
    @follow.save
    redirect_back(fallback_location: user_path(@user))
  end

  def destroy
    @follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    @user = User.find(params[:user_id])
    @follower_count = @user.followers.count
    @follow.destroy
    redirect_back(fallback_location: user_path(@user))
  end
end
