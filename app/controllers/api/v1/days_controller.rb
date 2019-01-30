class Api::V1::DaysController < ApplicationController

  def index
    @days = Day.all
    render json: @days
  end

  def create
    @day = Day.new(params[:name])
    if @day.save
      render json: @day
    end
  end

end
