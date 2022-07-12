Rails.application.routes.draw do
  get 'words/index'
  resources :words, only: :index
end
