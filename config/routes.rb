Rails.application.routes.draw do
  resources :users
  resources :user_books
  resources :books do
    member do
      get :delete
    end
  end
  root 'user_books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
