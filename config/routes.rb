Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :users {
		get 'users/:id', to: 'users#show', as:'user'
	}
	resources :jobs, :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
