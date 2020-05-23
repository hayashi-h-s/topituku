class RelationshipsController < ApplicationController
  def create
    @follow = current_user.active_relationships.build(follower_id: params[:user_id])
    @user = User.find(params[:user_id])
    # binding.pry
    @follow.save
    # redirect_back(fallback_location: user_relationships_path)
  end

  def destroy
    @follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    @user = User.find(params[:user_id])
    # binding.pry
    @follow.destroy
    # redirect_back(fallback_location: user_relationships_path)
  end
end