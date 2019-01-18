class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role, :hours
end
