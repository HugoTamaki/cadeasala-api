module Api
  module V1
    module Admin
      class DisciplinesController < ApplicationController
        def show
          discipline = Discipline.find(params[:id])

          render json: discipline, serializer: Api::V1::Admin::DisciplinesSerializer
        end

        def update
          discipline = Discipline.find(params[:id])

          if discipline.update(discipline_params)
            render json: discipline, serializer: Api::V1::Admin::DisciplinesSerializer
          else
            render json: { error: 'could not update' }, stauts: :bad_request
          end
        end


        def discipline_params
          params.require(:discipline).permit(:name)
        end
      end
    end
  end
end
