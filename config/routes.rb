Rails.application.routes.draw do
  get 'tweet/timeline'
  get 'home/top'
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/timeline', to: 'tweet#timeline'
  root 'home#top'
end