class UserHour < ApplicationRecord
  belongs_to :user
  belongs_to :hour
end
