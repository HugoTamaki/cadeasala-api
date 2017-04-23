module Api
  module V1
    module Admin
      class DisciplinesSerializer < ActiveModel::Serializer
        attributes :id, :name
      end
    end
  end
end