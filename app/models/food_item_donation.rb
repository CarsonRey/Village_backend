class FoodItemDonation < ApplicationRecord
  belongs_to :food_item
  belongs_to :donation
end
