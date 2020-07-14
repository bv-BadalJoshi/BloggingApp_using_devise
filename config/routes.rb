Rails.application.routes.draw do
	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	resources :articles
	root "pages#home"
	resources :pages, only: [:show]	
end