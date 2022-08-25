class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :duck, dependent: :destroy
  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: ["reqaked", "Qaking confirmed", "Qaking rejected"] }
  attribute :status, :string, default: 'reqaked'
end
