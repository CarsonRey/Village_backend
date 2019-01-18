class Api::V1::RatingsController < ApplicationController

  def index
    @ratings = Rating.all
    render json: @ratings
  end

  def create
    @rating = Rating.new(rating_params(:number, :notes, :delivery_id, :deliverer_id, :rater_id ))
    if @rating.save
      render json: @rating
    else
      render json: {error: "rating could not be created"}
    end
  end

  private

  def rating_params(*args)
    params.require(:rating).permit(*args)
  end

end
