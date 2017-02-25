Rails.application.routes.draw do

  namespace :api, as: nil, defaults: {format: :json} do
    namespace :v1, as: nil, defaults: {format: :json} do
      devise_for :users,
      controllers: {
        sessions: 'users/sessions'
      }

      namespace :admin, as: nil do

      end
    end
  end
end
