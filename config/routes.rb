Rails.application.routes.draw do
  get 'projects/index'
  resources 'contacts'
  resources 'about'
  resources 'services'
  resources 'portfolio'
  resources 'blogs'
  resources 'teams'
  resources 'my_services'
  resources 'pricing'
  resources 'projects'
  root to: 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check
end
