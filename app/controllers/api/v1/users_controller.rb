class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
     byebug
   @user = User.create!(user_params)

     if @user.valid?

       token = JWT.encode({user_id: @user.id}, 'SECRET')
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
     # {name: params[:name], email: params[:email], password: params[:password], role_id: params[:role_id]}
     params.require(:user).permit(:name, :email, :password, :role_id)
   end
end
