module Api
  module V1
    module Admin
      class CourseDisciplinesSerializer < ActiveModel::Serializer
        attributes :id, :discipline_name, :discipline_id, :ap1_local, :ap1_date,
                   :ap2_local, :ap2_date, :ap3_local, :ap3_date,
                   :ad1_deadline, :ad2_deadline, :presencial_tutor,
                   :tutorship_weekday, :tutorship_time, :tutorship_room
      end
    end
  end
end