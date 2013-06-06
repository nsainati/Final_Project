Wineapp::Application.routes.draw do



root :to => 'bottles#index'

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

    # Routes for the Bottle resource:
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

  # Routes for the Event resource:
  # CREATE
  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create'

  # READ
  get '/events', controller: 'events', action: 'index', as: 'events'
  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  # UPDATE
  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  put '/events/:id', controller: 'events', action: 'update'

  # DELETE
  delete '/events/:id', controller: 'events', action: 'destroy'
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

  # Routes for the Flavorassignment resource:
  # CREATE
  get '/flavorassignments/new', controller: 'flavorassignments', action: 'new', as: 'new_flavorassignment'
  post '/flavorassignments', controller: 'flavorassignments', action: 'create'

  # READ
  get '/flavorassignments', controller: 'flavorassignments', action: 'index', as: 'flavorassignments'
  get '/flavorassignments/:id', controller: 'flavorassignments', action: 'show', as: 'flavorassignment'

  # UPDATE
  get '/flavorassignments/:id/edit', controller: 'flavorassignments', action: 'edit', as: 'edit_flavorassignment'
  put '/flavorassignments/:id', controller: 'flavorassignments', action: 'update'

  # DELETE
  delete '/flavorassignments/:id', controller: 'flavorassignments', action: 'destroy'
  #------------------------------

  # Routes for the Flavor resource:
  # CREATE
  get '/flavors/new', controller: 'flavors', action: 'new', as: 'new_flavor'
  post '/flavors', controller: 'flavors', action: 'create'

  # READ
  get '/flavors', controller: 'flavors', action: 'index', as: 'flavors'
  get '/flavors/:id', controller: 'flavors', action: 'show', as: 'flavor'

  # UPDATE
  get '/flavors/:id/edit', controller: 'flavors', action: 'edit', as: 'edit_flavor'
  put '/flavors/:id', controller: 'flavors', action: 'update'

  # DELETE
  delete '/flavors/:id', controller: 'flavors', action: 'destroy'
  #------------------------------

  resources :bootstraps


end
