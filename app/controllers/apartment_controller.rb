class ApartmentController < ApplicationController
  def index
    @apartments = Apartment.all
  end
  def show

    @apartment = Apartment.find(params[:id])

  end

  def new
    @buildings = Building.all
  end
  def create

    @apartments = Apartment.create(

      number: params["number"],

      building_id: params["building_id"]



    )

     redirect_back(fallback_location: "/")

    flash["notice"]

   end

  def edit
  end
end
