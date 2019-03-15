class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    auth = request.env["omniauth.auth"]
    session[:oauth_token] = auth[:credentials][:token]
    session[:oauth_token_secret] = auth[:credentials][:secret]
    logger.debug("このページは読み込まれていますsession")
    logger.debug(session[:oauth_token].inspect)
    
    
    
    
    
    
    
    
    
    
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
  
  


end