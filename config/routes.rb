Rails.application.routes.draw do

  namespace :api, as: nil, defaults: {format: :json} do
    namespace :v1, as: nil, defaults: {format: :json} do
      devise_for :users,
      controllers: {
        sessions: 'users/sessions'
      }

      namespace :admin, as: nil do
        resources :locations, only: [:index, :show] do
          resources :courses, only: [:index, :show] do
            resources :course_disciplines, only: [:index] do
              put 'bulk_update', on: :collection
            end
          end
        end

        resources :disciplines, only: [:show, :update]
      end

      resources :locations, only: [:index] do
        resources :courses, only: [:index] do
          resources :course_disciplines, only: [:index]
        end
      end
    end
  end
end
