WaysIntoWork::Application.routes.draw do

  devise_for :user_logins

  root to: 'welcome#show'

  get 'outside_hackney' => 'eligibility#outside_hackney'
  get 'just_registered' => 'just_registered#show'

  namespace :advisor do
    resources :clients, only: [:show, :index] do
      post :assign_to_me
      resources :meetings, only: [:new, :create]
    end

    resources :my_clients, only: :index
  end

  namespace :service_manager do
    resources :clients, only: [:index, :show] do
      resource :advisors, only: :update, controller: 'client_advisors'
    end
  end

  resources :clients, only: [:new, :create] do
  end

  resources :hubs, only: :index


  namespace :client do
    resource :password, only: [:edit]
    resource :profile, only: [:show]
    resource :personal_traits, only: [:edit, :update]
    resource :objectives, only: [:edit, :update]
    resource :education, only: [:edit, :update], controller: 'education'
    resource :employment_status, only: [:edit, :update], controller: 'employment_status'
    resource :additional_information, only: [:edit, :update], controller: 'additional_information'
    resource :dashboard, only: :show
  end

end
