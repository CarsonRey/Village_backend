class Api::V1::DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render json: @donations
  end

  def create
    # byebug
    @donation = Donation.new(donation_params)
    if @donation.save
      render json: @donation
    else
      render json: {error: "food item could not be created"}
    end
  end

  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy
  end

  private

  def donation_params
    params.require(:donation).permit(:giver_id, :receiver_id, :request_id)
  end

end
