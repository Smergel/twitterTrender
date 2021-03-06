class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @users = User.all
    if current_user.nil? || current_user.admin != true
      redirect_to('/')
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if current_user.nil?
      redirect_to('/')
    end
    # @location = Location.all
  end

  # GET /users/new
  def new
    @user = User.new
    if !current_user.nil?
      redirect_to('/')
    end

    @location = Location.all
  end

  # GET /users/1/edit
  def edit
    if current_user.nil? || edit_user_path != edit_user_path(current_user)
      redirect_to('/')
    end
    @location = Location.all
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @location = Location.all
    respond_to do |format|
      if @user.save
        format.html { redirect_to '/', notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        session[:user_id] = @user.id
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @location = Location.all
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to '/', notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    @location = Location.all
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
    if current_user.nil? || edit_user_path != edit_user_path(current_user)
      redirect_to('/')
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation, :location1, :location2, :location3)
    end
end
