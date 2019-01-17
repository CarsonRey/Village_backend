class RatingSerializer < ActiveModel::Serializer
  attributes :id, :giver, :deliverer, :receiver, :rating, :notes
end
