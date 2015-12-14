class UserController < ApplicationController
  def login
    if request.post?
      user = Clinician.find_by_Clinician_ID(params[:usercode])
      if user
        session[:user_code] = user.Clinician_ID
        redirect_to "/" 
      end
    else
      session[:user_code] = nil
    end
  end
end
