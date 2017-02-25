module Api
  module V1
    module Admin
      class AdminJWTSerializer < ActiveModel::Serializer
        attributes :id, :email
      end
    end
  end
end