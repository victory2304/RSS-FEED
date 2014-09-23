RSSFeed::Application.routes.draw do
  # get "conferance/index"
  resources :conferance
  devise_for :users

  # get "feed/index"
  resources :feed do
  	get :all_feed_url, :on  => :collection
  end 
  root :to => 'home#index'
end
