Rails.application.routes.draw do
    root 'pages#home'
    get 'about' , to: 'pages#about'
    get 'home' , to: 'pages#home'
    resources :articles
    get 'signup', to: 'users#new'
    resources :users, except: [:new]
end
