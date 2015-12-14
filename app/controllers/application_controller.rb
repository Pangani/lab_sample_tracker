class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery #with: :exception


  before_filter :check_with_user_has_loggedin, :except => ['login']

  private

  def check_with_user_has_loggedin
    if session[:user_code].blank?
      redirect_to '/user/login'
    end
  end

end
