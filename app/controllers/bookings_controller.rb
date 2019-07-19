class BookingsController  < ApplicationController


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
      render "animals/show"
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
  def decline
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.confirmed = false
    @booking.save
    respond_to do |format|
      msg = { :status => "ok" }
      format.js
    end
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :confirmed)

  end

end
