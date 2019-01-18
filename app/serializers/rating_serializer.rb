class RatingSerializer < ActiveModel::Serializer
  attributes :id, :deliverer, :rater, :number, :notes
end
