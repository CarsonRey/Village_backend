class Api::V1::FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
    render json: @food_items
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      render json: @food_item
    end
  end

  private

  def food_item_params
    params.require(:food_item).permit(:name, :quantity, :date_made, :expiration_date, :is_packaged, :notes)
  end
end
