Rails.application.routes.draw do
  resources 'contacts'
  resources 'about'
  resources 'services'
  resources 'portfolio'
  resources 'blogs'
  root to: 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check
end
