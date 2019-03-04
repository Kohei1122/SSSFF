Rails.application.routes.draw do
  get 'user/singin'
  get '/' => 'home#top'
  get '/housing' => 'home#housing'
  get '/financial' => 'home#financial'
  get '/medical' => 'home#medical'
  
  get '/login_form' => 'user#login_form'
  post 'login' => 'user#login'
  get '/logoff' => 'user#logoff'
  
end
