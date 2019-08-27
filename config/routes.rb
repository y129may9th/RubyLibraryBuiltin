Rails.application.routes.draw do
  root 'library#top'
  get '/get', to: 'library#get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
