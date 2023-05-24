class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    session_user_id = session[:user_id]

    return unless session_user_id

    Current.user = User.find_by(id: session_user_id)
  end

  def require_user_logged_in!
    return if Current.user.present?

    redirect_to sign_in_path, alert: 'You must to be sign in to access this content'
  end
end
