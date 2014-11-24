Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  #HOME ROUTE
  root 'application#index'

  #QUIZ IMAGES ROUTES
  get "/quiz_images/1", to: "quiz_images#form_1"
  post "/quiz_images/1", to: "quiz_images#form_1_submit"
  get "/quiz_images/2", to: "quiz_images#form_2"
  post "/quiz_images/2", to: "quiz_images#form_2_submit"
  get "/quiz_images/3", to: "quiz_images#form_3"
  post "/quiz_images/3", to: "quiz_images#form_3_submit"
  get "/quiz_images/4", to: "quiz_images#form_4"
  post "/quiz_images/4", to: "quiz_images#form_4_submit"

  #SESSIONS ROUTE
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new'=> 'sessions#create'
  delete 'sessions'  => 'sessions#destroy'

  #ZIP CODE ROUTE
  get '/zip_codes/search', to: 'zip_codes#search', as: 'search'

  #BARS ROUTE
  
  post "/bars", to: "bars#results"
  get "/bars", to: "bars#search", as: 'search_for_bar'

  
end
