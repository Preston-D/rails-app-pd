Rails.application.routes.draw do
  resources :photos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Home Controller
  root to: 'home#index'
  get 'home/about'

  # Devise
  Rails.application.routes.draw do
  resources :photos
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end
end
