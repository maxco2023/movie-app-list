Rails.application.routes.draw do
  root "lists#home"
  get "test", to: "lists#test"
  resources :lists do
    resources :bookmarks, only: [:new, :create, :edit, :update]
  end
  resources :bookmarks, only: :destroy
end
