class RequestsController < ApplicationController
  def index
  end

  def show
  end

  def create
  @requests = current_user.request.new(request_params) 
  #attribute it to a user
    if @request.save
    redirect_to user_path(current_user.id)
    else
      render "new"
    end
  end

  def new
    @request = Request.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def request_params
   params.require(:request).permit(:destination, :description)
  end
 end


