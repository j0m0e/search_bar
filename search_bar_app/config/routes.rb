Rails.application.routes.draw do

  resources :users, only: [:new, :create]

	root 'application#index'

	#SESSIONS ROUTES
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new'=> 'sessions#create'
  delete 'sessions'  => 'sessions#destroy'

end
