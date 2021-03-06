Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :create]
      resources :lyrics, only: [:index, :update]
      resources :user_lyrics, only: [:index, :update, :create]
      get '/lyrics/:user_id/new_song', to: "lyrics#new_song"
    end
  end

end
