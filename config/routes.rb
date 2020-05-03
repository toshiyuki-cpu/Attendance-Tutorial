Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      get 'attendances/edit_one_month'
<<<<<<< HEAD
      patch 'attendances/update_one_month'
=======
      patch 'attendances/update_one_month' # この行が追加対象です。
>>>>>>> edit-attendances2
    end
    resources :attendances, only: :update
  end
end