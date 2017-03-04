Rails.application.routes.draw do

  namespace :api, as: nil, defaults: {format: :json} do
    namespace :v1, as: nil, defaults: {format: :json} do
      devise_for :users,
      controllers: {
        sessions: 'users/sessions'
      }

      namespace :admin, as: nil do
        resources :locations, only: [:index] do
          resources :courses, only: [:index]
        end
      end
    end
  end
end
