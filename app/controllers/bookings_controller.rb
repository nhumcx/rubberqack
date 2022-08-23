class BookingsController < ApplicationController
  def new
    @duck = Duck.find(params[:duck_id])
    @booking = Booking.new
  end

  def create
    @duck = Duck.find(params[:duck_id])
    @booking = Booking.new(booking_params)
    @booking.duck = @duck
    if @booking.save
      redirect_to duck_path(@booking.duck)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    # @booking = booking.find_by(duck: @duck, movie: movie)
    @booking.destroy

    redirect_to duck_path(@booking.duck), status: :see_other
  end

  def edit
    @duck = Duck.find(params[:id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to duck_path(@booking.duck)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
