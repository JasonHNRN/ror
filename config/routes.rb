Rails.application.routes.draw do

  root 'welcome#index'

  #get 'welcome/index'
  #get 'welcome/next'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resource 'users'  # 这种和下面这种写法都是可行的。
  
  
 

 # 下面这个设置是很有意思，想在url中显示 /admin 而又不想把代码放到admin的命名空间中
=begin
  scope '/admin' do
   resources :users
  end
=end

# 下面是嵌入式路由，主要是用于有上下关系或者，比如每个用户默认都有一个博客，那么就需要去设置博客的路由和用户的路由的关联关系

  resources :users do
      resources :blogs
      end
  resources :sessions
  
  namespace :admin do

      root 'users#index'
      resources :users do
        collection do
           get :search
        end
      end
    
  end

end
