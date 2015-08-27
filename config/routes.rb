Rails.application.routes.draw do
  root to: 'dashboards#main'

  devise_for :users, :skip => :registrations
  resources :redirects, except: [:index, :show]

  # Static pages controller welcome / getting started
end
