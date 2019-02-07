class Api::V1::UserHoursController < ApplicationController

  def index
    @user_hours = UserHour.all
    render json: @user_hours
  end


  def create
    # byebug
    @user_hour = UserHour.new(user_hour_params)

    @user = User.find(params[:user_id])
    @hour = Hour.find(params[:hour_id])

        @hours = @user.hours.select do |hourSet|
          hourSet.day_id != @hour.day_id
        end

    @user.hours = @hours

    # we want to go through the hours that the user does have and "remove" the hour that is being updated
    # AKA we're seeing if the current user_hour.hour.day_id matches any of the hour.day_ids in the user's collection

    if @user_hour.save
      render json: @user_hour
    end
  end

  private

  def user_hour_params
    params.require(:user_hour).permit(:user_id, :hour_id)
  end

end
