# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end

  private

  def correct_user
    @folder = if params[:folder_id]
                Folder.find(params[:folder_id])
              else
                Folder.find(params[:id])
              end
    unless current_user == @folder.user
      flash[:danger] = 'ユーザー本人のみが、行える操作です。'
      redirect_to folders_path
    end
  end

  def logged_in_user
    unless user_signed_in?
      flash[:danger] = 'ログインしてください。'
      redirect_to new_user_session_path
    end
  end

  def not_logged_in_user
    redirect_to folders_path if user_signed_in?
  end

  def record_not_found
    render plain: "404 Not Found", status: 404
  end
end
