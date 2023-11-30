require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: "users/passwords",
    registrations: "users/registrations",
    confirmations: "users/confirmations"
  }
  # root 'home#index'

  get "welcome/index"

  mount Sidekiq::Web, at: '/sidekiq'

  # route where any visitor require the helloWorldJob to be triggered
  post "welcome/trigger_job"

  resources :photos 

  # where visitor are redirected once job has been called
  get "other/job_done"

  root to: "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
