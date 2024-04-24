Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources 'contacts'
  resources 'about'
  resources 'services'
  resources 'portfolio'
  resources 'blogs'
  resources 'teams'
  resources 'my_services'
  resources 'pricing'
  resources 'projects'
  resources 'terms_of_use'
  resources 'privacy_policy'
  resources 'faq'
  resources 'projects'
  root to: 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check
end
