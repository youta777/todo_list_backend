Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "todos" => "todo#index"
      post "todo/create" => "todo/create"
    end
  end
end
