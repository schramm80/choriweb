Rails.application.routes.draw do

  root to: 'views#index'

  match '/contactanos',     to: 'contactanos#new',             via: 'get'
  resources "contactanos", only: [:new, :create]

end
