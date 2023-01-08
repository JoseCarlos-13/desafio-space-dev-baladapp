Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :launches, only: %i[index update destroy show] do
    get 'welcome_message'
  end

  root 'home#welcome_message'
end
