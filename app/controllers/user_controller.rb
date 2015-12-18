class UserController < ApplicationController
  def login
    if request.post?
      user = Clinician.find_by_Clinician_ID(params[:usercode])
      #raise user.inspect
      if user
        #raise "hello"
        session[:user_code] = user.Clinician_ID
        redirect_to "/" 
      end
    else
      session[:user_code] = nil
    end
  end

  def show
  end
end
