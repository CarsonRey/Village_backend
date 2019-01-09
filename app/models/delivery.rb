class Delivery < ApplicationRecord
  belongs_to :user
  has_one :donation
end
