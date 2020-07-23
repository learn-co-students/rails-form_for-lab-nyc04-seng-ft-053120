Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:show, :new, :create, :edit, :update] 
  # get 'school_classes/new', to: 'school_classes#new'
  # post 'school_classes', to: 'school_classes#create'
  resources :school_classes, only: [:show, :new, :create, :edit, :update] 
end
