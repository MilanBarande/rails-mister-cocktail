Rails.application.routes.draw do
  resources :cocktails, only: [:new, :index, :show, :create, :delete ] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]
  root "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
