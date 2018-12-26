Rails.application.routes.draw do
  resources :products
  post '/orders', to: 'orders#create'
end
