class Rating < ApplicationRecord
  belongs_to :rater, :class_name => 'User'
  belongs_to :deliverer, :class_name => 'User'
  belongs_to :delivery
end

# delivery.giver.ratings.filter(rating => rating.delivery_id === delivery.id)

# delivery.receiver.ratings.filter(rating => rating.delivery_id === delivery.id)
