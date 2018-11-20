Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Admin
  get 'admin' => 'admin#dashboard', as: :admin_dashbaord

  # Main
  get 'main/index'

  root 'main#index'
end
