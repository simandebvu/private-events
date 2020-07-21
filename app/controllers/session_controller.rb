class SessionController < ApplicationController
  def create
    session[:current_user_name] = @user.name
  end
end
