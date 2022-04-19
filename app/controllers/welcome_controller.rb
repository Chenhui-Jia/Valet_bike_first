class WelcomeController < ApplicationController
  def index
    # for displaying station markers on map
    @markers = Station.all.collect do |station|
      {:latlng => [station.latitude, station.longitude],
       :popup => "<b>#{station.name}</b><br>#{station.address}<br>(x) docked bikes<br>(x) empty docks"}
    end
  end

  def profile
  end
end
