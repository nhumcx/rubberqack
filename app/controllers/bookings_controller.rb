class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    # @ducks = Duck.all
  end

  def new
    @duck = Duck.find(params[:duck_id])
    @booking = Booking.new
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end

  def create
    @duck = Duck.find(params[:duck_id])
    @booking = Booking.new(booking_params)
    @booking.duck = @duck
    @booking.user = current_user
    if @booking.save!
      redirect_to duck_path(@booking.duck), notice: "Successfully booked #{@duck.name}"
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

  def confirm_booking
    @booking = Booking.find(params[:id])
    @booking.status = "Qaking confirmed"
    @booking.save!
    redirect_to my_ducks_path
  end

  def reject_booking
    @booking = Booking.find(params[:id])
    @booking.status = "Qaking rejected"
    @booking.save!
    redirect_to my_ducks_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :comment)
  end
end
