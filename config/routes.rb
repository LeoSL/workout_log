Rails.application.routes.draw do
  resources :workouts
  root 'workouts#index'

  devise_for :user, path: '', path_names: { sign_in: "login", sign_out: "logout" }
  devise_scope :user do
    get "/login", to: "devise/sessions#new", :as => :login
    get "/logout", to: "devise/sessions#destroy", :as => :logout
  end
end
