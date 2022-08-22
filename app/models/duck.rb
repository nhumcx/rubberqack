class Duck < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
end
