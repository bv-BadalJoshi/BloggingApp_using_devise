Rails.application.routes.draw do
	dev_config = ActiveAdmin::Devise.config
	dev_config[:controllers][:omniauth_callbacks] = "admin_users/omniauth_callbacks" 
	devise_for :admin_users,dev_config
	ActiveAdmin.routes(self)
	devise_for :users 
	resources :articles
	root "pages#home"
	resources :pages, only: [:show]	
end
