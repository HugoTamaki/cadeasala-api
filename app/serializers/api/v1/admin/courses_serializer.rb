module Api
  module V1
    module Admin
      class CoursesSerializer < ActiveModel::Serializer
        attributes :id, :name
      end
    end
  end
end