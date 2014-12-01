Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#index"

  get "/profile", to: "pages#profile"
  get "/message", to: "pages#message"
end
