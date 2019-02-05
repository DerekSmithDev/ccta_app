class Api::FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all

    last_visit_search = params[:last_visit]
    if last_visit_search
      @favorites = @favorites.where(last_visit: last_visit_search)
    end

    type_of_stop_search = params[:type_of_stop]
    if type_of_stop_search
      @favorites = @favorites.where("type_of_stop ILIKE ?", "%#{type_of_stop_search}%")
    end

    stop_name_search = params[:stop_name]
    if stop_name_search
      @favorites = @favorites.where("stop_name ILIKE ?", "%#{stop_name_search}%")
    end

    address_search = params[:address]
    if address_search
      @favorites = @favorites.where("address ILIKE ?", "%#{address_search}%")
    end
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @favorite = Favorite.find_by(id: input_id)
    render "show.json.jbuilder"  
  end

  def create
    @favorite = Favorite.new(
      a: params["type_of_stop"],
      b: params["stop_name"],
      c: params[:last_visit],
      d: params["address"]
      )
    if @favorite.save
      render "show.json.jbuilder"
    else
      render json: {errors: @favorite.errors.full_messages}, status: 422
    end
  end

  def update
    @favorite = Favorite.find_by(id: params["id"])

    @favorite.type_of_stop = params["type_of_stop"] || @favorite.type_of_stop
    @favorite.stop_name = params["stop_name"] || @favorite.stop_name
    @favorite.last_visit = params["last_visit"] || @favorite.last_visit
    @favorite.address = params["address"] || @favorite.address

    if @favorite.save
      render "show.json.jbuilder"
    else
      render json: {errors: @favorite.errors.full_messages}, status: 422
    end
  end

  def destroy
    @input_id = params["id"]
    favorite = Favorite.find_by(id: @input_id)
    
    if favorite.destroy
      render "destroy.json.jbuilder"
    else
      render json: {errors: @favorite.errors.full_messages}, status: 422
    end
  end  
end
