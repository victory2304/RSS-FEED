RSSFeed::Application.routes.draw do
  devise_for :users

  # get "feed/index"
  resources :feed do
  	get :all_feed_url, :on  => :collection
  end 
  root :to => 'home#index'
end
