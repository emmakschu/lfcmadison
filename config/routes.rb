Rails.application.routes.draw do
  get 'link/index'

  get '/matches' => 'matches#index'
  get '/matches/next' => 'matches#next'
  get '/matches/last' => 'matches#last'
  get '/matches/recent' => 'matches#recent'
  get '/tables' => 'matches#table'
  get '/matches/:id' => 'matches#show'
  
  get '/songs' => 'songs#index'
  get '/songs/:id' => 'songs#show'

  get '/about' => 'about#index'
  get '/contact' => 'about#contact'
  get '/pub' => 'about#pub'
  
  get '/links' => 'links#index'
  get '/usasupporters' => 'links#supporters'
  
  get '/members' => 'members#index'
  get '/join' => 'members#new'
  post '/join' => 'members#create'
  get '/members/:id' => 'members#show'

  root 'welcome#index'
  
  resources :matches, :teams, :members

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
