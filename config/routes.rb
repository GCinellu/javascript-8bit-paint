Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  root 'welcome#index'

  resources :paintings

  resources :palettes do
    resources :colors
  end
end
