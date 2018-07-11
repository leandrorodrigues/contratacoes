Rails.application.routes.draw do
  resources :suppliers
  resources :contract_participations
  resources :contract_items
  resources :contract_item_groups
  resources :contract_events
  resources :contract_event_alerts
  resources :contracts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
