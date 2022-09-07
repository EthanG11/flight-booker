class FlightsController < ApplicationController
    def index
        @flight = Flight.new
        @airport_names = Airport.all.map{|airport| [airport.code]}
        @passengers_possible = Array(1..4)
        @start_date_time = Flight.all.map{|flight| [flight.start_datetime.strftime("%m/%d/%y")]}
        @start_date_time = @start_date_time.uniq
        if(params[:flight])
        @available_flights = Flight.where(arrival_airport_id: Airport.select(:id).where("code = ?",params[:flight][:arrival_airport_id]).first.id, departure_airport_id:Airport.select(:id).where("code = ?",params[:flight][:departure_airport_id]).first.id,start_datetime: DateTime.strptime(params[:flight][:start_datetime],"%m/%d/%y").all_day).to_a
        @number_of_passengers = params[:flight][:number_of_passengers]
        end

    end


end
