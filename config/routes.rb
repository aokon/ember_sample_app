Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :contacts
    end
  end

  root to: "home#index"
end
