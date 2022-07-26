class BookingsController < ApplicationController
  def new
    @selected_flight = Flight.find(params[:flight][:id])

    @test = params[:flight][:number_of_passengers]
    @booking = Booking.new
    params[:number_of_passengers].to_i.times {@booking.passengers.build}
  end

def create
  @booking = Booking.new(booking_params)
  if(@booking.save)
    redirect_to booking_path(@booking)
  else
    render :new
  end
end
def show
  @booking = Booking.find(params[:id])
  
  
end
private

  def booking_params
    params.require(:booking).permit(:flight_id,passengers_attributes: [:id,:name,:email])
  end





end
