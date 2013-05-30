Wineapp::Application.routes.draw do

#Session routes
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get '/logout', controller: 'sessions', action: 'destroy'


  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Occasion resource:
  # CREATE
  get '/occasions/new', controller: 'occasions', action: 'new', as: 'new_occasion'
  post '/occasions', controller: 'occasions', action: 'create'

  # READ
  get '/occasions', controller: 'occasions', action: 'index', as: 'occasions'
  get '/occasions/:id', controller: 'occasions', action: 'show', as: 'occasion'

  # UPDATE
  get '/occasions/:id/edit', controller: 'occasions', action: 'edit', as: 'edit_occasion'
  put '/occasions/:id', controller: 'occasions', action: 'update'

  # DELETE
  delete '/occasions/:id', controller: 'occasions', action: 'destroy'
  #------------------------------

  # Routes for the Bottle resource:
root :to => 'bottles#index'
  # CREATE
  get '/bottles/new', controller: 'bottles', action: 'new', as: 'new_bottle'
  post '/bottles', controller: 'bottles', action: 'create'

  # READ
  get '/bottles', controller: 'bottles', action: 'index', as: 'bottles'
  get '/bottles/:id', controller: 'bottles', action: 'show', as: 'bottle'

  # UPDATE
  get '/bottles/:id/edit', controller: 'bottles', action: 'edit', as: 'edit_bottle'
  put '/bottles/:id', controller: 'bottles', action: 'update'

  # DELETE
  delete '/bottles/:id', controller: 'bottles', action: 'destroy'
  #------------------------------

  resources :bootstraps


end