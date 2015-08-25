Rails.application.routes.draw do
  resources :redirects, except: [:index, :show]
  # root to Dashboard controller #show
  # Static pages controller welcome / getting started
end
