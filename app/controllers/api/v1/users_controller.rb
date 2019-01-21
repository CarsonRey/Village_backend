class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
     # byebug
   @user = User.new(user_params)
   # @user.role_id = determineRoleId(@user)
   @secret = Rails.application.credentials.auth_secret
   
     if @user.save
       token = JWT.encode({user_id: @user.id}, @secret)
       render json: {user: @user, jwt: token}
     else
       render json: {error: "WRONG"}, status: 422
     end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private
   def user_params

     params.require(:user).permit(:name, :email, :password, :role_id, :address)
   end
end
