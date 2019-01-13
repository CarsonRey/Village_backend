class DonationSerializer < ActiveModel::Serializer
  attributes :id, :giver_id, :receiver_id, :request_id
end
