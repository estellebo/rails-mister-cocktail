Rails.application.routes.draw do
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
