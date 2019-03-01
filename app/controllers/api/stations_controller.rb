class Api::StationsController < ApplicationController

  def index

    # The type of transport the user selected
    api_name = params[:api_name]

    # Range to look for within selected transport type
    latitude = params[:latitude].to_f
    latitude_plus_one = latitude + 0.01449275362
    latitude_minus_one = latitude - 0.01449275362


    longitude = params[:longitude].to_f
    longitude_plus_one = longitude + 0.01449275362
    longitude_minus_one = longitude - 0.01449275362

    @stations = Station.where(
      api_name: api_name,
      latitude: latitude_minus_one..latitude_plus_one,
      longitude: longitude_minus_one..longitude_plus_one)

    render "index.json.jbuilder"

  end

  # def create
  # end 

  def show
    @station = Station.find_by(id: :id)
  end

  # def update
  # end 

  # def destroy
  # end  

end
