class UsersController < ApplicationController
  before_action :user_signed_in?, only: [:edit, :destroy]
  # before_action :correct_user,   only: [:edit, :update,:destroy]

  def show
    @user = User.find(params[:id])
    @folders = @user.folders.all.page(params[:page]).per(2)
  end

end
