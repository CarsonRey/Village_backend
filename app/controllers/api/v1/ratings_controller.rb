class Api::V1::RatingsController < ApplicationController

  def index
    @ratings = Rating.all
    render json: @ratings
  end

  def create
    if rating_params(:giver_id)
      @rating = Rating.new(rating_params(:rating, :notes, :delivery_id, :deliverer_id, :giver_id ))
    else
      @rating = Rating.new(rating_params(:rating, :notes, :delivery_id, :deliverer_id, :receiver_id ))
    end

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
