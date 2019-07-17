class BookingsController  < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking

  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking

  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def confirm
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.confirmed = true
    @booking.save
    respond_to do |format|
      msg = { :status => "ok" }
      format.js
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :confirmed, :location)

  end

end
