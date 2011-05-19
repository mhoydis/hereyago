class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authorize_admin
    unless current_user.try(:admin?)
      flash[:notice] = "Denied.  You are not an Admin, or are not signed in at all."
      redirect_to root_path and return 
      false
    end
  end

  def after_sign_in_path_for(resource)
      if current_user.try(:admin?)
        stored_location_for(:user) || controlpanel_index_path
      else
        stored_location_for(:user) || welcome_path
      end
  end
  
end
