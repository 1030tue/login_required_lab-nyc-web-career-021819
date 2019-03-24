class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to "/sessions/new" unless session[:name]
    @current_user = current_user

  end


  def current_user
      session[:name]
  end

  private
  def login_required
    redirect_to login_path unless current_user
  end


end
