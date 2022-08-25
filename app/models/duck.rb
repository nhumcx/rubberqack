class Duck < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_one_attached :photo

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      {from }
  end
end
