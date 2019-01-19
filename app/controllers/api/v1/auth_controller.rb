class Api::V1::AuthController < ApplicationController

  def create
    #byebug
  @user = User.find_by(email: login_user_params[:email])

    if @user && @user.authenticate(login_user_params[:password])
      token = issue_token({user_id: @user.id})
      render json: {user: @user, hours: @user.hours, jwt: token}
    else
      render json: {error: "WRONG WRONG WRONG"}, status: 400
    end
  end

  def show
    if current_user
      # byebug
      render json: {user: current_user, hours: current_user.hours}
    else
      render json: {error: "some error"}, status: 422
    end
  end

  private

  def login_user_params
    # {email: params[:email], password: params[:password]}
   params.require(:user).permit(:email, :password)
  end

end
