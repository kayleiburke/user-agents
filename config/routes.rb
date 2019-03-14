Rails.application.routes.draw do
  resources :user_agent_logs, only: [:index]
  #get "/fetch_user_agent_logs" => 'items#from_category', as: 'fetch_items'

  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
