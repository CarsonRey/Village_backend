class Api::V1::HoursController < ApplicationController

  def index
    @hours = Hour.all
    render json: @hours
  end


  def create
    if Hour.where(time_range: hour_params[:time_range])
      @hour = Hour.where(time_range: hour_params[:time_range])
      render json: @hour
    else
      @hour = Hour.new(hour_params)
      if @hour.save
        render json: @hour
      end
    end
  end

  def destroy
    @hour = Hour.find(params[:id])
    @hour.destroy
  end

  private

  def hour_params
    params.require(:hour).permit(:time_range, :day_id)
  end

end
