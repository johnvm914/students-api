Rails.application.routes.draw do
  namespace :api do  
    namespace :v1 do
      get "/students", to: "students#index"
      get "students/:id", to: "students#show"
      post "/students" , to: "students#create"
      patch "/students/:id", to: "students#update"
      delete "/students/:id", to: "students#destroy"
    end

    namespace :v2 do
      get "/students", to: "students#index"
      get "students/:id", to: "students#show"
      post "/students" , to: "students#create"
      patch "/students/:id", to: "students#update"
      delete "/students/:id", to: "students#destroy"
    end
  end
end
