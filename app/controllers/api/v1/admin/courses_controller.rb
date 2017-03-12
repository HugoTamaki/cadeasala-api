module Api
  module V1
    module Admin
      class CoursesController < ApplicationController
        def index
          location = Location.find(params[:location_id])
          courses = location.courses
          render json: courses, each_serializer: Api::V1::Admin::CoursesSerializer
        end

        def show
          location = Location.find(params[:location_id])
          course = location.courses.find(params[:id])
          render json: course, serializer: Api::V1::Admin::CoursesSerializer
        end
      end
    end
  end
end
