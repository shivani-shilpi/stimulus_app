Rails.application.routes.draw do
  resources :todos
  resources :tasks
  resources :projects do 
    resources :comments
  end
  patch '/todos/:id/update_position', to: 'todos#update_position', as: 'update_position'
  get 'posts/create'
  get 'posts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  resources :students do
    collection do
      get :fetch_country_states
    end
    resources :posts
  end
end
