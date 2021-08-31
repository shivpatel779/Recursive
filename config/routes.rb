Rails.application.routes.draw do
  resources :goals
  post '/goals/:id' => 'goals#update'
end
