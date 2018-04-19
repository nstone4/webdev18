Rails.application.routes.draw do
  devise_for :users
  resources :photo_tests
  root 'welcome#home'

  get 'about', to: 'welcome#about'

end
