Rails.application.routes.draw do

  # read all tasks
  get 'tasks', to: 'tasks#index'

  # create one task (2 steps)
  get 'tasks/new', to: 'tasks#new', as: 'new'
  post 'tasks', to: 'tasks#create'

  # read one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # update on task (2 steps)
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'

  # delete one task
  delete 'tasks/:id', to: 'tasks#destroy'
end
