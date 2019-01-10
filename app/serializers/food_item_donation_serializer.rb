class FoodItemDonationSerializer < ActiveModel::Serializer
  attributes :id, :food_item_id, :donation_id
end
