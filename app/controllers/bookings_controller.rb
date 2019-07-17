class BookingsController  < ApplicationController

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  private
  def booking_params
  params.require(:booking).permit(:date, :confirmed, :location)

  end

end
