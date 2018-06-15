class RequestsController < ApplicationController
  def index
  end

  def show
  end
  def new
    @request = Request.new
  end

  def create
  @requests = current_user.requests.new(request_params) 
  #attribute it to a user
  if @requests.save
    redirect_to user_path(current_user.id)
    else
      render "new"
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to user_path
  end

  def destroy
    # Look up request by params ID (Taken from URL)
    @request = Request.find(params[:id])
    # Delete the request
    @request.destroy
    # Redirect to user path
    redirect_to user_path(current_user)
  end

  private
  def request_params
   params.require(:request).permit(:destination, :description)
  end
 end


