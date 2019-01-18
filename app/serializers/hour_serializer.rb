class HourSerializer < ActiveModel::Serializer
  attributes :id, :day, :time_range
end


# Day model,
# On creation of the Hours, we get an array of objects. We then iterate through that array, map with index

#use days (an array of seven) map with index, for each object we pass it into the determineDay function and create the association by adding 1, 2, 3 or etc


# `${days[0]["Monday"].start}-${days[0]["Monday"].end}`
