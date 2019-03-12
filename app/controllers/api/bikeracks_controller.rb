class Api::BikeracksController < ApplicationController
  def index
    station_id = params[:station_id]

    @bikeracks = Bikerack.where(station_id: => [station_id])

    render "index.json.jbuilder"
  end
end
