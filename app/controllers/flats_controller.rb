class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    if @flat.geocoded?
      @marker = [{
        lat: @flat.latitude,
        lng: @flat.longitude
      }]
    else
      @marker = {}
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :price, pictures: [])
  end
end
