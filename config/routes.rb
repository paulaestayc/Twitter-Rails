Rails.application.routes.draw do

  get "/views/explorar/explorar", to: "explorar#explorar", as: "explorar"


  ActiveAdmin.routes(self)
  resources :tweets do
    post 'likes', to: 'tweets#likes' 
    post 'retweet', to: 'tweets#retweet'
  end


  devise_for :users
  get 'home/index'
  get 'all_tweets', to: 'home#all_tweets', as: 'all_tweets'


  post 'follow/:user_id', to: 'users#follow', as: 'users_follow'

  root 'home#index'

  scope '/api' do
    get '/news', to: 'api#news'
    get '/tweets_between_dates/:date1/:date2', to: 'api#tweets_between_dates' 
    post '/tweets', to: 'api#create_tweet'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
