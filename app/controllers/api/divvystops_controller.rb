class Api::DivvystopsController < ApplicationController

  def index

    @divvystops = Divvystop.where('station_id IN (?)', [607,606])

    pp @divvystops

    render "index.json.jbuilder"

  end 

end
