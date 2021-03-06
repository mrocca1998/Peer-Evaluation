Rails.application.routes.draw do
	get 'reviews/:id', to: 'peer_evaluations#index'
 	devise_for :students, path: 'u'
	resources :students
	resources :groups
	resources :projects
	resources :assignments
	resources :memberships
	resources :scores
	resources :reviews
	resources :peer_evaluations
  resources :grades

	root to: 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
