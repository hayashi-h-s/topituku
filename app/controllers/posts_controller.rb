# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :correct_user, only: %i[new create destroy]

  def index
    @folder = Folder.find(params[:folder_id])
    @posts = @folder.posts.all.order(created_at: :desc)
    # .order("RAND()").limit(1000) ランダムに表示できる
    @follow_count = @folder.user.followings.count
    @follower_count = @folder.user.followers.count
  end

  def new
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.new
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.build(post_params)
    if @post.save
      redirect_back(fallback_location: new_folder_post_path)
      flash[:notice] = "「#{@post.content}」を投稿しました"
    else
      redirect_back(fallback_location: new_folder_post_path)
    end
  end

  def destroy
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.find(params[:id])
    @post.destroy
    redirect_back fallback_location: new_folder_post_path, notice: "トピック「#{@post.content}」を削除しました"
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
