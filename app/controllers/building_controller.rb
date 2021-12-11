class BuildingController < ApplicationController
  def index
    @buildings = Building.all.order(id: :asc)
  end

  def show
    @building = Building.find(params["id"])
  end

  def new
    @buildings = Building.all
  end

  def create 
    Building.create(
      
      name: params["name"],
      address: params["address"],
      city: params["city"]
      )
      redirect_back(fallback_location: "/")
      flash["notice"]      

  end
end
