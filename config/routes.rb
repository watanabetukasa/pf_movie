Rails.application.routes.draw do
  devise_for(
    :admins,
    path: 'admin',
    module: 'devise'
    )

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root to: 'homes#top'
    resources :movies, only:[:index,:new,:show,:edit,:create]
  end
end
