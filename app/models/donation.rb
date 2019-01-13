class Donation < ApplicationRecord
  belongs_to :giver, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'
  belongs_to :delivery
  belongs_to :request
  has_many :fooditemdonations
  has_many :fooditems, through: :fooditemdonations
end
