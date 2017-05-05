class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notifications = Notification.where(user_id: current_user.id).where(read: false).order(created_at: :desc)
    if @notifications_count == 0
      flash.now[:notice] = "現在お知らせはありません！"
    end
  end
end
