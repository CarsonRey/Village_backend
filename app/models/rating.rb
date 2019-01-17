class Rating < ApplicationRecord
  belongs_to :giver, :class_name => 'User', optional: true
  belongs_to :deliverer, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User', optional: true
  belongs_to :delivery
end

# delivery.giver.ratings.filter(rating => rating.delivery_id === delivery.id)

# delivery.receiver.ratings.filter(rating => rating.delivery_id === delivery.id)
