Rails.application.routes.draw do

  resources :galleries
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' , registrations: 'registrations' }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  as :user do
    get '/users/sign_out' => 'devise/sessions#destroy'            
  end

  get '/home/about' =>'home#about', :as => :about

  get ':user_name', to: 'profiles#show', as: :profile
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
  patch ':user_name/edit', to: 'profiles#update', as: :update_profile
  get ':user_name/get_points' => 'profiles#get_points', :as => :points
  patch ':user_name/get_points', to: 'profiles#points', as: :points_update

  root 'home#index'

  resources "home"
  resources "users"
  resources "contacts", only: [:new, :create]

end