AsciiArt::Application.routes.draw do
  root :to => 'posts#index'

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  resources :users
  resources :posts
end
