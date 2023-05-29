class OmniauthCallbackController < ApplicationController
  def twitter
    auth_nickname = auth.info.nickname
    
    twitter_account = Current.user.twitter_accounts.where(username: auth_nickname).first_or_initialize
    twitter_account.update(
      name: auth.info.name,
      username: auth_nickname,
      image: auth.info.image,
      token: auth.credentials.token,
      secret: auth.credentials.secret
    )

    redirect_to twitter_accounts_path, notice: 'Successfully connected your account'
  end

  def auth
    request.env['omniauth.auth']
  end
end
