Rails.application.routes.draw do
  root to: 'folders#index'
  get 'folders/:folder_id/game', to: "folders#game"

  resources :folders do
    resources :posts
  end
end