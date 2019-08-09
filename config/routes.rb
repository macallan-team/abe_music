Rails.application.routes.draw do

  root 'items#index'
  devise_for :admins, controllers: {
  	sessions:     'admins/sessions',
  	passwords:    'admins/passwords',
  	registrations:'admins/registrations'
  }
  devise_for :users, controllers: {
  	sessions:     'users/sessions',
  	passwords:    'users/passwords',
  	registrations:'users/registrations'
  }
  resources :manage_items, only: [:edit, :new, :create, :destroy, :index, :update]
  resources :categories, only: [:create, :destroy, :update]
  resources :artists, only: [:create, :destroy, :update]
  resources :labels, only: [:create, :destroy, :update]
  resources :item, only: [:show, :index]
  resources :likes, only: [:create, :destroy]
  get '/user/:id/orders/confirm' => 'order#confrim', as: 'confirm_order'
  get '/manage_items/search' => 'manage_item#search', as: 'search_manage_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
