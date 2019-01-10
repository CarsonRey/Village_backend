class UserHourSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :hour_id
end
