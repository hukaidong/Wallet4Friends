Rails.application.routes.draw do
  resources :money_transfers
  resources :group_payment_items
  resources :group_payments
  resources :users
  root "wallet#main"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
