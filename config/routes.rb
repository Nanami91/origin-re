Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"noodles#index"
  resources :noodles, only: [:index, :new, :create] do
    resources :addresses, only: [:index, :new, :create]
  end
end
