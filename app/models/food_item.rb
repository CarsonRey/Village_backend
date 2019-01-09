class FoodItem < ApplicationRecord
  has_many :fooditemdonations
  has_many :donations, through: :fooditemdonations
end
