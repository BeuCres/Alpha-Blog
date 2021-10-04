Rails.application.routes.draw do
    root 'pages#home'
    get 'about' , to: 'pages#about'
    get 'home' , to: 'pages#home'
    resources :articles
    #get 'article', to: 'articles#destroy'
    get 'signup', to: 'users#new'
    resources :users, except: [:new]
    #get 'user', to: 'users#destroy'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'logout', to: 'sessions#destroy'
end
