AsciiArt::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  resources :users
  resources :posts

  root :to => 'posts#index'
end
