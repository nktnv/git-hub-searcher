Rails.application.routes.draw do

  root 'projects#index'

  resource :projects, only: [:show]
  get '/projects/search' => 'projects#search'
  get '/projects/page' => 'projects#page'

  put '/vote' => 'votes#vote'

  resource :users, only: [:show]

end
