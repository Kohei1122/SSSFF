Rails.application.routes.draw do
  get 'user/singin'
  get '/' => 'home#top'
  get '/housing' => 'home#housing'
  get '/financial' => 'home#financial'
  get '/medical' => 'home#medical'
  
  get '/login_form' => 'user#login_form'
  post 'login' => 'user#login'
  get '/logoff' => 'user#logoff'
  
  get '/create_form' => 'user#create_form'
  post '/create' => 'user#create'
  get 'user/index' => 'user#index'
  get '/users/:id'=> 'user#show'
  
end
