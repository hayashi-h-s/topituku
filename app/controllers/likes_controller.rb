class LikesController < ApplicationController

  def create
    # binding.pry
    @like = current_user.likes.create(folder_id: params[:folder_id])
    # binding.pry
    redirect_back(fallback_location: root_path)
    # rdirect_to root_path
  end

  def destroy
    @like = Like.find_by(folder_id: params[:folder_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
    # ridirect_to root_path
  end    
end
