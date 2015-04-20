Rails.application.routes.draw do

  root to: 'views#index'

  resources "contactanos", only: [:new, :create]

end
