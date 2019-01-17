class Api::V1::DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render json: @donations
  end

  def create
    # byebug
    @donation = Donation.new(donation_params(:giver_id, :receiver_id, :request_id))
    if @donation.save
      render json: @donation
    else
      render json: {error: "food item could not be created"}
    end
  end

  def add_to_delivery
    @donation = Donation.find(params[:id])
    if @donation.update(donation_params(:delivery_id))
      render json: @donation
    end
  end

  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy
  end

  private

  def donation_params(*args)
    params.require(:donation).permit(*args)
  end

end
