module Api
  module V1
    module Admin
      class CourseDisciplinesController < ApplicationController
        def index
          location = Location.find(params[:location_id])
          course = Course.find(params[:course_id])
          course_disciplines = CourseDiscipline.joins(:discipline).where(location: location, course: course).order("disciplines.slug asc")

          render json: course_disciplines, each_serializer: Api::V1::Admin::CourseDisciplinesSerializer, status: :ok
        end

        def bulk_update
          location = Location.find(params[:location_id])
          course = Course.find(params[:course_id])

          course_disciplines_params[:data].each do |cd_params|
            course_discipline = CourseDiscipline.find(cd_params[:id])
            course_discipline.update(cd_params)
          end

          course_disciplines = CourseDiscipline.joins(:discipline).where(location: location, course: course).order("disciplines.slug asc")

          render json: course_disciplines, each_serializer: Api::V1::Admin::CourseDisciplinesSerializer, status: :ok
        end

        def course_disciplines_params
          params.require(:course_discipline).permit(data: [:id, :ap1_local, :ap1_date,
                                                   :ap2_local, :ap2_date,
                                                   :ap3_local, :ap3_date,
                                                   :ad1_deadline, :ad2_deadline,
                                                   :presencial_tutor, :tutorship_weekday,
                                                   :tutorship_time, :tutorship_room])
        end
      end
    end
  end
end
