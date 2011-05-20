class HomeController < ApplicationController

#before_filter :authorize_user, :only => [:create, :new, :edit, :update, :destroy, :show]
before_filter :authorize_user, :only => [:show]

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb  
    end
  end

end
