Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'

  post 'users' => 'users#create'

  get 'posts' => 'posts#index'

  post 'posts' => 'posts#create'

end
