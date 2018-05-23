Rails.application.routes.draw do
  root 'items#index'

  resources :items, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :stores, only: [:index]

  get "/:store/items", to: 'stores/items#index', as: 'store_items'
  get "/:store/items/:id", to: 'stores/items#show', as: 'store_item'
end
