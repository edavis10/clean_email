Rails.application.routes.draw do
  root 'cleaner#new'
  post 'cleaner/create'
end
