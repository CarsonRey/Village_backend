class FoodItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :date_made, :expiration_date, :is_packaged, :notes
end
