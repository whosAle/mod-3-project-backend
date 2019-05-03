Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update]
      resources :lyrics, only: [:index, :update]
      resources :user_lyrics, only: [:index, :update]
    end
  end

end