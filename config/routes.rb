Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :tags
      resources :tasks
      resources :sources
      resources :notes
      resources :projects
      resources :topics
    end 
  end
end
