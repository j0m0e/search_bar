Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  #HOME ROUTE
  root 'application#index'

  #QUIZ IMAGES ROUTES
  get "/quiz_images", to: "quiz_images#form"
  post "/quiz_images", to: "quiz_images#form_submit"

  #SESSIONS ROUTE
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new'=> 'sessions#create'
  delete 'sessions'  => 'sessions#destroy'

  #ZIP CODE ROUTE
  get '/zip_codes/search', to: 'zip_codes#search', as: 'search'

  #BARS ROUTE
  
  post "/bars", to: "bars#search"
  get "/bars", to: "bars#results", as: 'results'


  #USERS ROUTE

  put "/users", to: "users#add_bar"
<<<<<<< HEAD

  
||||||| merged common ancestors
  get "/users/:id", to: "users#show"
  
=======

>>>>>>> 99ecbc52046fe05c7b74368abad55dae9d6821d2
end
