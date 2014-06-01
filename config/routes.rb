Rails.application.routes.draw do
  resources :map

  root to: 'map#index'

  get 'scores' => 'map#get_scores'
end
