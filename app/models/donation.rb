class Donation < ApplicationRecord
  belongs_to :giver, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'
  belongs_to :delivery, optional: true
  belongs_to :request
  has_many :food_item_donations
  has_many :food_items, through: :food_item_donations
end
