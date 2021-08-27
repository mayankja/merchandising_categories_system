Rails.application.routes.draw do
  namespace :v1 do
    resources :categories, only: [:index]

    get 'category', to: 'categories#show', as: :category
    get 'products', to: 'categories#products', as: :products
  end
end
