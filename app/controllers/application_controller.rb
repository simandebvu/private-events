class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
  def home; end

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
