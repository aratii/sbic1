class SessionsController < ApplicationController
  def new
   @title = "Admin Login"
  end
 
  def create
    user = User.authenticate(params[:session][:name],
                             params[:session][:virtualPW])
    if user.nil?
      flash.now[:error] = "Invalid username/password combination."
      @title = "Admin Login"
      render 'new'
    else
      sign_in user
      redirect_to :controller => "pages", :action => 'home'
    end
  end

   def destroy
    sign_out
    redirect_to root_path
  end
end
