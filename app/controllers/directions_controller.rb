class DirectionsController < ApplicationController
  def index
    @directions = "THESE ARE DIRECTIONS"
  end
  
  def show
    citi = CitiBikeDirections.new("harry")
    @json = citi.find_total_directions(params[:start_point], params[:end_point])
    if request.xhr?
      render partial: "map", locals: { map_data: @json }
    end
  end
end