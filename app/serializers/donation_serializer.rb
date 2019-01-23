class DonationSerializer < ActiveModel::Serializer

  attributes :id, :request_id, :delivery_id, :food_items, :created_at
  belongs_to :giver
  belongs_to :receiver

end

# when a donator submits/schedules a donation, we make a post request to the donations controller

# we also iterate over all of the food items and make post requests there

# in the response after creating the food_item, we associate it with the donation by posting to food_item_donations
