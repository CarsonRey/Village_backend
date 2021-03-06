class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  has_many :user_hours
  has_many :hours, through: :user_hours
  has_many :ratings
  has_many :requests
  has_one :location
end
