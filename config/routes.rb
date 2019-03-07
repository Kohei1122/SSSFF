Rails.application.routes.draw do
  get 'facility/index'
  get 'facility/search'
  get '/facility/create_form' => 'facility#create_form'
  post '/facility/create' => 'facility#create'
  get 'facility/:id' => 'facility#show'
  
  get 'user/singin'
  get '/' => 'home#top'
  get '/housing' => 'home#housing'
  get '/finance' => 'home#finance'
  get '/medical' => 'home#medical'
  
  get '/login_form' => 'user#login_form'
  post 'login' => 'user#login'
  get '/logoff' => 'user#logoff'
  
  get '/create_form' => 'user#create_form'
  post '/create' => 'user#create'
  get 'user/index' => 'user#index'
  get '/user/:id'=> 'user#show'
  
end
