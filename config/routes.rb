Rails.application.routes.draw do
		root 'virtualmachines#new'
		get 'virtualmachines/new'
		post 'virtualmachines/new', to: 'virtualmachines#show'
		get 'virtualmachines/show'

        get  '/signup',  to: 'users#new'
        get    '/login',   to: 'sessions#new'
        post   '/login',   to: 'sessions#create'
        delete '/logout',  to: 'sessions#destroy'
        resources :users
end
