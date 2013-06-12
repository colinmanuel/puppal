# location_controller.rb
class LocationsController < ApplicationController
  def show
    render params[:location]
  end
end
