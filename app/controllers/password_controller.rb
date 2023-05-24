class PasswordController < ApplicationController
  before_action :require_user_logged_in!

  def edit
    @user = Current.user
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: 'Password updated successfully'
    else
      render :edit, status: :bad_request
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
