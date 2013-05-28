class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @pins = @users.to_gmaps4rails
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end
    # GET /users/1/edit
  def edit
    @user = User.find(current_user.id)
  end
end