class RequestSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :mouths_to_feed, :created_at
end
