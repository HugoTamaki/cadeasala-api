module Api
  module V1
    class CoursesController < ApplicationController
      skip_before_action :validate_token
      skip_after_action :update_token

      def index
        location = Location.find(params[:location_id])
        courses = location.courses
        render json: courses, each_serializer: Api::V1::Admin::CoursesSerializer
      end
    end
  end
end
