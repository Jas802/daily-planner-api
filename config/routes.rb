Rails.application.routes.draw do
  namespace 'api' do
    resources :sessions, only: [:create]
    delete :logout, to: "sessions#logout"
    get :logged_in, to: "session#logged_in"
    resources :registrations, only: [:create]
    resources :users
    resources :events
  end
end
