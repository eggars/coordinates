class CoordinatesController < ApplicationController
  def show
    json_response("all_good: #{params[:address]}")
  end
end
