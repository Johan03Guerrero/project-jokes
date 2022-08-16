Rails.application.routes.draw do
  get 'jokes/index'
  get 'jokes/show_jokes_api'
  get 'jokes/show_my_jokes'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  root :to => redirect('/login')
  
  get '/save_joke_fav' => 'jokes#save_joke'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
