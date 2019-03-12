class Api::LstopsController < ApplicationController

  def index

    station_id = params[:station_id]

    color = params[:color]

    @lstops = Lstop.where(station_id: => [station_id]).where("#{color} = ?", true)

    render "index.json.jbuilder"

  end

  # def create
  # end 

  # def show
  # end

  # def update
  # end 

  # def destroy
  # end  

end
