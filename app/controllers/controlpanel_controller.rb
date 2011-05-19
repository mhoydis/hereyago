class ControlpanelController < ApplicationController

#before_filter :authenticate_admin!
#before_filter :authorize_admin, :only => [:create, :new, :edit, :update, :destroy, :show]
before_filter :authorize_admin
  
  def index 

  end
  
end
