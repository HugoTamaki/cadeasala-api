Rails.application.routes.draw do

  namespace :api, as: nil, defaults: {format: :json} do
    namespace :v1, as: nil do
      namespace :admin, as: nil do

      end
    end
  end
end
