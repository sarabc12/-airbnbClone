class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(bookings_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to flats_path(@booking)
    else
      puts @booking.errors.full_messages
      render :new # status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @flat = @booking.flat
    @booking.destroy
    redirect_to flat_path(@flat)
  end

 private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :flat_id, :status)
  end
end
