Road04::Application.routes.draw do
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  resources :casestudies

  resources :blogposts

  resources :articles

  resources :people  
  resources :portraits
  resources :headshots
  

  get "pages/home"

  get "pages/privacy"

  get "pages/contact"
  
  get "pages/dna"
  
  get "pages/what_we_do"
  
  get "pages/accordion"
  
  root :to => "pages#home"

  match 'contact-us' => 'pages#contact'
  match 'privacy' => 'pages#privacy'
  match 'our-dna' => 'pages#dna'
  match 'what-we-do' => 'pages#what_we_do'
  
  match 'our-community' => 'people#index'
  

 
  match 'people/display/:id' => 'people#display'
  
  match 'articles/display/:id' => 'articles#display'
  match 'blog/display/:id' => 'blogposts#display'  
  match 'casestudies/display/:id' => 'casestudies#display'  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
