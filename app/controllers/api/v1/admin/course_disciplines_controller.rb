module Api
  module V1
    module Admin
      class CourseDisciplinesController < ApplicationController
        def index
          location = Location.find(params[:location_id])
          course = Course.find(params[:course_id])
          course_disciplines = CourseDiscipline.where(course: course, location: location)

          render json: course_disciplines, each_serializer: Api::V1::Admin::CourseDisciplinesSerializer
        end
      end
    end
  end
end
