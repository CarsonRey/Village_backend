class Api::V1::HoursController < ApplicationController

  def index
    @hours = Hour.all
    render json: @hours
  end


  def create
    @hour = Hour.new(hour_params)
    if @hour.save
      render json: @hour
    end
  end

  def get_user_hours
    @user_hours = Hour.where(u)
  end

  private

  def hour_params
    params.require(:hour).permit(:time_range, :day_id)
  end

end
