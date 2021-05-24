Rails.application.routes.draw do

  resources :gyms, only: [:index, :show, :destroy, :new, :create]
  resources :clients, only: [:index, :show, :destroy, :new, :create]
  resources :memberships, only: [:new, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
