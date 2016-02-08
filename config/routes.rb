Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end

# Notes

# line 9: the word "signup" on this page was invented when we wrote below line
# line 10: get because its getting the page template
# line 11: post becuase this will be create a new session cookie. so it posts
# line 12: delete becuase this will delete the new session cookie we created


#Explanation
# get    'login'     =>'sessions#action'
# means
# get = HTTP request
# /login = URL
# Named Route = login_path
# Action = new
# porpse page for new sessions login
