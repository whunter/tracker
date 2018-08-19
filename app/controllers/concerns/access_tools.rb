module AccessTools
  def check_logged_in
    redirect_to root_path, alert: "You need to login to see that page." if current_user.blank?
  end

  def check_admin
    redirect_to root_path, alert: "You need to be an admin to see that page." if !current_user.admin?
  end

  def admin_or_mine
    is_admin? || same_user?
  end

  def is_admin?
    current_user.admin?
  end

  def same_user?
    current_user.id == params[:user_id]
  end
end