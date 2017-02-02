Rails.application.routes.draw do
  namespace :api do
    get 'comments/index'
  end

  namespace :api do
    get 'comments/show'
  end

  namespace :api do
    get 'comments/create'
  end

  namespace :api do
    get 'groups/index'
  end

  namespace :api do
    get 'groups/show'
  end

  namespace :api do
    get 'groups/create'
  end

  namespace :api do
    get 'groups/update'
  end

  namespace :api do
    get 'groups/destroy'
  end

  namespace :api do
    get 'session/create'
  end

  namespace :api do
    get 'session/destroy'
  end

  namespace :api do
    get 'users/create'
  end

  namespace :api do
    get 'users/show'
  end

  namespace :api do
    get 'todos/index'
  end

  namespace :api do
    get 'todos/create'
  end

  namespace :api do
    get 'todos/update'
  end

  get 'todos/index'

  get 'todos/create'

  get 'todos/update'

  get 'users/create'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
