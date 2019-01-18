class Hour < ApplicationRecord
  has_many :user_hours
  has_many :users, through: :user_hours
  belongs_to :day
end
