Rails.application.routes.draw do
  get 'schedule/index'

  resources :buildings do
    resources :rooms
  end

  resources :rooms do
    resource :lessons
  end

  resources :rooms
  resources :lessons

  root to: 'buildings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
