Rails.application.routes.draw do
  resources :map

  root to: 'map#index'
end
