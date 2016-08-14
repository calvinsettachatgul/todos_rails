Rails.application.routes.draw do
  get 'todos/index'

  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	resources :todos
  end
end
