Rails.application.routes.draw do
  root to: 'home#show'
  resources  :users, only: [:new, :create]

  resources  :ads, only: [:new, :create]
  
  # login
  resources  :sessions, only: [:new, :create] do
    collection do
      delete '', to: 'sessions#destroy', as: 'delete'
    end
  end
end
