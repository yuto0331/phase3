class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def current_user_login
      unless  current_user
      flash[:referer] = 'ログインしてください'
      # render new_session_path URLと同じにする
      redirect_to new_session_path
      end
  end       
end
