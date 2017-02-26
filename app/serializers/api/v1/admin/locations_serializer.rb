module Api
  module V1
    module Admin
      class LocationsSerializer < ActiveModel::Serializer
        attributes :id, :name
      end
    end
  end
end