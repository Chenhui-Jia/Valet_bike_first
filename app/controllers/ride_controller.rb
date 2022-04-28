class RideController < ApplicationController
    def ride
    end

    def start
      # todo: make sure there is a station passed in the params hash (not null) - 
      # remove the route for start without station id and verify here
      @bike = Bike.find_by(current_station_id: params[:station_id])
      # make sure there is a bike docked at the station
      redirect_to "/map", notice: "No available bikes. Please choose a different station" if !@bike

      if @bike.update(current_station_id: nil)
        # todo: redirect_to different page to avoid checking out another bike if the user refreshes the page
      else
        redirect_to root_path, notice: "Sorry, something went wrong :("
      end
    end

    def end
    end



  end
