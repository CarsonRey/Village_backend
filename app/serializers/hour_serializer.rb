class HourSerializer < ActiveModel::Serializer
  attributes :id, :day, :time_range, :users

end
