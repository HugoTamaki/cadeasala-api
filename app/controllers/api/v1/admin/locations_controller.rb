module Api
  module V1
    module Admin
      class LocationsController < ApplicationController
        def index
          locations = Location.all
          render json: locations, each_serializer: Api::V1::Admin::LocationsSerializer
        end
      end
    end
  end
end
