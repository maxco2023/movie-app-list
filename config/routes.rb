Rails.application.routes.draw do
  root "lists#home"
  resources :lists do
    resources :bookmarks, only: [:new, :create, :edit, :update]
  end
  resources :bookmarks, only: :destroy
end
