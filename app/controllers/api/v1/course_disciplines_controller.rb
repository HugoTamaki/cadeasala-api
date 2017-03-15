module Api
  module V1
    class CourseDisciplinesController < ApplicationController
      skip_before_action :validate_token
      skip_after_action :update_token

      def index
        location = Location.find(params[:location_id])
        course = Course.find(params[:course_id])
        course_disciplines = CourseDiscipline.joins(:discipline).where(location: location, course: course).order("disciplines.slug asc")

        render json: course_disciplines, each_serializer: Api::V1::Admin::CourseDisciplinesSerializer, status: :ok
      end
    end
  end
end
