Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index] do
    collection do
      match "search" => "book#search", via: [:get, :post], as: :search
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root "books#index"
end
