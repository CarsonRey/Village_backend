class Delivery < ApplicationRecord
  belongs_to :giver, :class_name => 'User'
  belongs_to :deliverer, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'
  has_one :donation
end
