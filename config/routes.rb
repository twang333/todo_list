Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks do
    member do
      patch :toggle
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
