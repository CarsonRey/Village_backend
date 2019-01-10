class DonationSerializer < ActiveModel::Serializer
  attributes :id, :giver_id, :receiver_id
end
