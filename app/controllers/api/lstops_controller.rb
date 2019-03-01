class Api::LstopsController < ApplicationController

  def index
    @lstops = Lstop.all

    render "index.json.jbuilder"
  end

  def create
  end 

  def show
  end

  def update
  end 

  def destroy
  end  

end
