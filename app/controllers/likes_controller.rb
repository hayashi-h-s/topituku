# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(folder_id: params[:folder_id])
    @like.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(folder_id: params[:folder_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end