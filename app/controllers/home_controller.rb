class HomeController < ApplicationController
  def top
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
    @token1 = session[:oauth_token]
  end
end