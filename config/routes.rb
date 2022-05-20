Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: %i[destroy]
  resources :bookmarks, only: %i[destroy]

end
