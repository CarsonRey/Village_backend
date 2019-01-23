class RatingSerializer < ActiveModel::Serializer
  attributes :id, :deliverer, :rater, :number, :notes, :delivery
end
