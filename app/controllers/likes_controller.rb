class LikesController < ApplicationController

  def create
    @folder = Folder.find(params[folder_id])
    
    @like = current_user.likes.build(folder_id: params[:folder_id])
    @like.save
    # binding.pry
    redirect_back(fallback_location: root_path)
    # rdirect_to root_path
  end

  def destroy
    @folder = Folder.find(params[folder_id])
    @like = Like.find_by(folder_id: params[:folder_id], user_id: current_user.id)
    # binding.pry
    @like.destroy
    redirect_back(fallback_location: root_path)
    # ridirect_to root_path
  end    
end
