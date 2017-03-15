module Api
  module V1
    class LocationsController < ApplicationController
      skip_before_action :validate_token
      skip_after_action :update_token

      def index
        locations = Location.all
        render json: locations, each_serializer: Api::V1::Admin::LocationsSerializer
      end
    end
  end
end
