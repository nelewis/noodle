class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @pins = @users.to_gmaps4rails
    
    Rack::MiniProfiler.step("fetch users") do
      @users
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.find(params[:email])
    flash[:error] = "Admin not found" and return unless @user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end

    # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(current_user.email)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:email])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end