Rails.application.routes.draw do
  get  '/:username/todos'     => 'todos#index'
  post '/:username/todos'     => 'todos#create'
  put  '/:username/todos/:id' => 'todos#update'
end
