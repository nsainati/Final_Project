class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin
    user = User.find_by_id(session["user_id"])
    if user.blank? || user.user_type != 'admin'
      redirect_to root_url
    end
  end

end
