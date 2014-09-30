class Admin::VideosController < ApplicationController
  before_filter :require_user
  before_filter :require_admin

  def new
    @video = Video.new
  end

  def create
    Video.create(video_params)
    redirect_to new_admin_video_path
  end

  private

  def require_admin
    if !current_user.admin?
      flash[:danger] = "You are not authorized to do that."
      redirect_to home_path unless current_user.admin?
    end
  end

  def video_params
    params.require(:video).permit(:title, :description, :small_cover_url, :large_cover_url, :category_id)
  end

end