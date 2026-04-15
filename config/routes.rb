Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/show'
  get 'projects/new'
  get 'projects/edit'
  root "projects#index"
  get "about", to: "pages#about"

  resources :projects do
    resources :tasks
  end
end

