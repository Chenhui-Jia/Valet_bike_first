class RideController < ApplicationController
    def ride
    end

    def start
      @station = Station.find_by(identifier: params[:identifier])
      a= request.params
      puts(a)
      # @station = Station.find_by(identifier: params[:current_station_id])
      # @bike = @station.docked_bikes.first()
      # if Current.user.payment=="" or !Current.user.payment
      #   @bike.update_attribute(:current_station, nil)
      #   redirect_to({:controller => 'stations', :action => 'index' })
      # else
      #   flash[:notice] = "Please complete payment below:"
      #   redirect_to({:controller => 'payment', :action => 'plans' })
      # end

    end
    def end
    end

    def index
      @stations = Station.all
    end



  end
