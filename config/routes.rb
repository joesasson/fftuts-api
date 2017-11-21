Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1, defaults: {format: 'json'}  do
      resources :tags
      resources :articles
    end
  end
end
