class RideController < ApplicationController
    def ride
    end

    def start
      if params[:station_id]
        #remove a bike from the station passed as a param
        bike = Bike.find_by current_station_id: params[:station_id]
        bike ? bike.update(current_station_id: null) : puts "no bike found" #find another way to deal with no bike found case
    end

    def end
    end



  end
