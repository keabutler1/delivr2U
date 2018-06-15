class UsersController < ApplicationController
        #restrict access/ called middle ware
        before_action :authorize, only: [:show, :destroy, :edit, :update]
      
        def index
          #get all users, rener their names on the users/index view
         @users = User.all
         #load all the requests on the page
         @requests = Request.all
        end
      
        def show
          @user = User.find(params[:id])
          unless current_user.id == @user.id
           redirect_to user_path(current_user.id)
          end
        end
      
        def new
          @user = User.new
       
        end
      
        def create
         @user = User.new(user_params)
        if @user.save
        redirect_to new_session_path
        else
        redirect_to new_user_path
        end
        end
      
        def edit
        end
      
        def update
        end
      
        def destroy
          current_user = destroy
          seesion[:user_id] = nil
          #redirect to the sign up page
          #deleting the cookies
          redirect_to new_user_path
        end
        private
        def user_params
         params.require(:user).permit(:name, :email, :password, :password_confirmation, :address)
        end
      
      
      end

