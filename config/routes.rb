Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'bank-accounts/create'
  jsonapi_resources :bank_accounts
  jsonapi_resources :transactions
end
