class WelcomeController < ApplicationController
  def index
    # for displaying station markers on map
    @markers = Station.all.collect do |station|
      {:latlng => [station.latitude, station.longitude],
       :popup => "<b>#{station.name}</b><br>#{station.address}<br>#{station.docked_bikes.count} docked bikes<br>#{station.dock_count - station.docked_bikes.count} empty docks "}
    end
  end

  def profile
  end
end
