class Api::V1::HoursController < ApplicationController

  def index
    @hours = Hour.all
    render json: @hours
  end


  def create
    # byebug
    @hour = Hour.new(hour_params)
    if @hour.save
      render json: @hour
    end
  end

  private

  def hour_params
    params.require(:hour).permit(:time_range, :day_id)
  end

end
