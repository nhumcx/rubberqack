class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :duck, dependent: :destroy
  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: %w[pending confirmed rejected] }
end
