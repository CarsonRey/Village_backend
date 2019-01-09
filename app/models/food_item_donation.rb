class FoodItemDonation < ApplicationRecord
  belongs_to :fooditem
  belongs_to :donation
end
