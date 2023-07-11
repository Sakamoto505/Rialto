Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) # monitoring console
  root "bulletins#index"
  resources :bulletins
end
