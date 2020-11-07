Rails.application.routes.draw do
  namespace 'api' do
    resources :events
  end
end
