class LikesController < ApplicationController

  def create
    @like = current_user.likes.build(folder_id: params[:folder_id])
    @folder = Folder.find(params[:folder_id])
    @like.save
  end

  def destroy
    @like = Like.find_by(folder_id: params[:folder_id], user_id: current_user.id)
    @folder = Folder.find(params[:folder_id])
    @like.destroy
  end
end