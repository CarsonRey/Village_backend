class User < ApplicationRecord
  belongs_to :role
  has_many :user_hours
  has_many :hours, through: :user_hours
end
