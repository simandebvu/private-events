class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
  def home; end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  private

  def logged_in_user
    if logged_in?
      redirect_to(user_path(@current_user)) if params[:id] != @current_user.id.to_s
    else
      flash[:danger] = 'log in'
      redirect_to login_url
    end
  end
end
