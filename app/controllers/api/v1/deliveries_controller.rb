class Api::V1::DeliveriesController < ApplicationController

  def index
    @deliveries = Delivery.all
    render json: @deliveries
  end

  def create
    # :start_location, :end_location
    @delivery = Delivery.new(delivery_params(:giver_id, :receiver_id, :deliverer_id  ))
    if @delivery.save
      render json: @delivery
    else
      render json: {error: "delivery could not be created"}
    end
  end

  def picked_up
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params(:pick_up))
      render json: @delivery
    end
  end


  def delivery_done
    byebug
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params(:drop_off, :delivered))
      render json: @delivery
    end
  end

  private

  def delivery_params(*args)
    params.require(:delivery).permit(*args)
  end

end
