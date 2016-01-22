class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_signin, except: [:new, :create]
  before_action :require_correct_user, only: [:update, :edit, :destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new
      end
  end

  def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @user.destroy
      redirect_to users_path, notice: 'User was successfully destroyed.'
  end

  private
    def require_correct_user
      @user = User.find(params[:id])
      unless @user == current_user
        redirect_to root_path, alert: "Finger weg, du perfider User, du!"
      end
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
    end
end
