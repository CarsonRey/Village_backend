class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role, :address, :hours
  # has_many :hours
end
