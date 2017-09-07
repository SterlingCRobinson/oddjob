Rails.application.routes.draw do
  devise_for :users
  devise_scope :user {
		get 'users/:id', to: 'users#show', as:'user'
	}
	resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
