class BookingsController < ApplicationController


















  def edit
    @duck = Duck.find(params[:id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to duck_path(@booking.duck)
  end
end
