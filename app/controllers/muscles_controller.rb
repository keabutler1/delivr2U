class MusclesController < ApplicationController
       #restrict access/ called middle ware
       before_action :authorize, only: [:show, :destroy, :edit, :update]
      
       def index
         #get all users, rener their names on the users/index view
    
        #load all the products on the page
        @muscle = Muscle.all
       end
     
       def show
         @request = Muscle.find(params[:id])
     
         unless current_muscle.id == @muscle.id
          redirect_to muscle_path(current_muscle.id)
         end
       end
     
       def new
         @muscle = Muscle.new
      
       end
     
       def create
        @muscle = Muscle.new(muscle_params)
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
         current_muscle = destroy
         seesion[:muscle_id] = nil
         #redirect to the sign up page
         #deleting the cookies
         redirect_to new_muscle_path
       end
       private
       def muscle_params
        params.require(:muscle).permit(:name, :email, :password, :password_confirmation, :address, :social_security_number, :drivers_license)
       end
     
     
     end
