class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :giver_id, :deliverer_id, :receiver_id, :start_location, :end_location, :pick_up, :drop_off, :delivered
end
