class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :start_location, :end_location, :pick_up, :drop_off, :delivered
  belongs_to :deliverer
  belongs_to :receiver
  belongs_to :giver
  has_one :donation

end
