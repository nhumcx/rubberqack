class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :duck, dependent: :destroy
end
