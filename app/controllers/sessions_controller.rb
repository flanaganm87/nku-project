class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, :notice => "You have succesfully signed in!" 
    else
        flash.now.alert = "Invalid email or password"
      render "index"
    end
  end

  def destroy
    sign_out
    session.delete(:user_id)
    flash[:notice] = 'You have successfully signed out!'
    redirect_to root_path 
  end
end
