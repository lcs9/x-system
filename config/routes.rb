Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  mount Sidekiq::Web, at: '/sidekiq'
  
  root to: "home#index"
  
  # resources :home, only: [:index] do
  #   resources :products, only: [:index, :show]
  # end

  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  	
end
