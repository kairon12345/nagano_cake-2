Rails.application.routes.draw do

   namespace :admin do
    root to: "homes#top"
  end

  root to:  "homes#top"
  get "customers/about" => "homes#about"

  devise_for :customers

  devise_for :admins, controllers:{
    sessions: 'admins/sessions'
  }

end
