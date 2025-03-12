class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = booking.new(bookings_params)
    @flat = Flat.find(params[:flat_id])
    @booking.list = @list

    if @booking.save
      redirect_to flats_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @booking = booking.find(params[:id])
  #   @flat = @booking.flat
  #   @booking.destroy
  #   redirect_to flat_path(@booking.flat)
  # end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
