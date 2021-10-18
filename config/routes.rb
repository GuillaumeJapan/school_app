Rails.application.routes.draw do
  resources :allergies
  resources :contacts
  resources :addresses
  resources :students
  resources :groups
  resources :employees
  resources :schools
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
