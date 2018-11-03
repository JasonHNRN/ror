Rails.application.routes.draw do

  root 'welcome#index'

  #get 'welcome/index'
  #get 'welcome/next'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resource 'users'  # 这种和下面这种写法都是可行的。
  resources :users
  resources :sessions

end
