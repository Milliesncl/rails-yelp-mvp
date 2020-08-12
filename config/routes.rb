Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
    member do
      post 'create'
    end
  end
end
