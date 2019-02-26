Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/housing' => 'home#housing'
  get '/financial' => 'home#financial'
  get '/medical' => 'home#medical'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
