class CoordinatesController < ApplicationController
  def show
    coordinates = get_coordinates_for_address(params[:address])
    json_response(coordinates)
  end

  private
  def get_coordinates_for_address(address)
    Geocoder.coordinates(address)
  end

end
