module Api
  module V1
    module Admin
      class LocationsController < ApplicationController
        def index
          locations = Location.all
          render json: locations, each_serializer: Api::V1::Admin::LocationsSerializer
        end

        def show
          location = Location.find(params[:id])
          render json: location, serializer: Api::V1::Admin::LocationsSerializer
        end
      end
    end
  end
end
