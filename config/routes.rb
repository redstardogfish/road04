Road04::Application.routes.draw do
  resources :history_stories

  resources :clients

  resources :industries

  resources :words

  get "categories/index"

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "sign_up" => "users#new", :as => "sign_up"
  get "change_password"  => "people#change_password"
  match "update_password"  => "people#update_password", :as => "update_password" 
  
  
  get "admin"  => "pages#admin", :as => "admin" 
  
  get "people_list"  => "people#listing", :as => "people_list"
  get "articles_list"  => "articles#listing", :as => "articles_list"
  get "blogposts_list"  => "blogposts#listing", :as => "blogposts_list"
  get "clients_list"  => "clients#listing", :as => "clients_list"
  
  
  match "people/display_box/:id"  => "people#display_box"
  get "article_select" => "articles#select", :as => "article_select"
  
  match "test"  => "pages#test"
  match "test2"  => "pages#test2"
  get   "home2" =>  "pages#home2"
  get   "home3" => "pages#home3"  
  get   "home4" => "pages#home4"
  
  get "pages/home"

  get "pages/privacy"

  get "pages/contact"
  
  get "pages/what_we_do"
  
  get "pages/accordion"
  
  get "pages/intro_video"
  

  get "pages/chats"
  
  root :to => "pages#home"

  match 'contact-us' => 'pages#contact'
  match 'privacy' => 'pages#privacy'
  match 'our-story' => 'pages#story'
  match 'what-we-do' => 'pages#what_we_do', :as => "what_we_do"
  
  match 'our-community' => 'people#index'
  

 
  match 'people/display/:id' => 'people#display'
  
  match 'articles/display/:id' => 'articles#display'
  match 'blog/display/:id' => 'blogposts#display'  
  match 'casestudies/display/:id' => 'casestudies#display'  
  
  
  resources :users
  resources :sessions
  resources :casestudies

  resources :blogposts

  resources :articles

  resources :people  
  resources :portraits
  resources :headshots
  
  
end
