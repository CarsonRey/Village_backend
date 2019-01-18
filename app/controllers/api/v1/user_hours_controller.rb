class Api::V1::UserHoursController < ApplicationController

  def index
    @user_user_hours = UserHour.all
    render json: @user_user_hours
  end


  def create
    # byebug
    @user_hour = UserHour.new(user_hour_params)
    if @user_hour.save
      render json: @user_hour
    end
  end

  private

  def user_hour_params
    params.require(:user_hour).permit(:user_id, :hour_id)
  end

end
