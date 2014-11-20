Rails.application.routes.draw do

<<<<<<< HEAD
  get "/quiz_images/1", to: "quiz_images#form_1"
  post "/quiz_images/1", to: "quiz_images#form_1_submit"
  get "/quiz_images/2", to: "quiz_images#form_2"
  post "/quiz_images/2", to: "quiz_images#form_2_submit"
  get "/quiz_images/3", to: "quiz_images#form_3"
  post "/quiz_images/3", to: "quiz_images#form_3_submit"
  get "/quiz_images/4", to: "quiz_images#form_4"
  post "/quiz_images/4", to: "quiz_images#form_4_submit"
||||||| merged common ancestors
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
=======
  resources :users, only: [:new, :create]
>>>>>>> 71b2d7db5426c4218ffefca8f4a6b9aa0c34cdaa

<<<<<<< HEAD
||||||| merged common ancestors
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
=======
	root 'application#index'

	#SESSIONS ROUTES
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new'=> 'sessions#create'
  delete 'sessions'  => 'sessions#destroy'

>>>>>>> 71b2d7db5426c4218ffefca8f4a6b9aa0c34cdaa
end
