Rails.application.routes.draw do
  root to: 'redirects#new' # Eventually Dashboard controller #show

  devise_for :users, :skip => :registrations
  resources :redirects, except: [:index, :show]

  # Static pages controller welcome / getting started
end
