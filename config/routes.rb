Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read.all
  get '/tasks', to: 'tasks#index', as: :tasks
  # create new
  get '/tasks/new', to: 'tasks#new', as: :tasks_new
  post 'tasks', to: 'tasks#create'
  # display one
  get '/tasks/:id', to: 'tasks#show', as: :task
  # update tasks
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
