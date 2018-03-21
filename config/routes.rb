Rails.application.routes.draw do
  root to: 'users#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:welcome] do
  	collection do
  		get :welcome
      get :contact_form
  	end
  end

end
