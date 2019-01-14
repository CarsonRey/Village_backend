class FoodItemDonationsController < ApplicationController


  def index
    @food_item_donations = FoodItemDonation.all
    render json: @food_item_donations
  end

  def create
    byebug
    @food_item_donation = FoodItemDonation.new(food_item_donation_params)
    if @food_item_donation.save
      render json: @food_item_donation
    end
  end

  private

  def food_item_donation_params
    params.require(:food_item_donation).permit(:food_item_id, :donation_id)
  end

end
