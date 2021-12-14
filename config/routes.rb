Rails.application.routes.draw do
  # get 'calculators/calculate'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/calculate', to: 'calculators#calculate'
  # Defines the root path route ("/")
  # root "articles#index"
end
