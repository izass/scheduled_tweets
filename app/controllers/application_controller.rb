class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    session_user_id = session[:user_id]

    if session_user_id
      Current.user = User.find_by(id: session_user_id)
    end
  end
end
