class FoodItem < ApplicationRecord
  has_many :food_item_donations
  has_many :donations, through: :food_item_donations
end
