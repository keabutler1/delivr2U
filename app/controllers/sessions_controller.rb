class SessionsController < ApplicationController
    def new
    end
  
    def create
      #check if they exist
      @user = User.find_by_email(params[:email])
      #if there is a user and their password is correct
      if @user && @user.authenticate(params[:password])
      # create a cookie and redirect to the profile page
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
      else 
      #otherwise, try again 
      redirect_to new_session_path
    end
   end
  
  
    def destroy
      #if the user logs out 
      session[:user_id] = nil
      redirect_to root_path
    end
  end