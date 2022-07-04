Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :clinics
      resources :addresses
    end
  end
end
