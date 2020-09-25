Rails.application.routes.draw do
  root 'records#index'
  get 'records/create'
  get 'records/index'
  post 'records/create'
  post 'records/new'
  get 'record/show'

  resources :records
end
