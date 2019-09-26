class SightingsController < ApplicationController
    def index
      sightings = Sighting.all
      SightingSerializer.new(sighting).to_serialized_json
    end
   
    def show
      sighting = Sighting.find_by(id: params[:id])
    #   So this:
    #   render json: sighting.to_json(:include => {
    #     :bird => {:only => [:name, :species]},
    #     :location => {:only => [:latitude, :longitude]}
    #   }, :except => [:updated_at])
    #   Turns into this:
    SightingSerializer.new(sighting).to_serialized_json

    #   Notice how you are passing in the sighting instance variable
    #   produced within this controller.
    end
  end