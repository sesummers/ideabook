Rails.application.routes.draw do
 
  # CREATE
  
  get '/new_idea' => "ideas#new"
  get '/create_idea' => 'ideas#create'
  
  #READ
  get '/ideas/:id' => 'ideas#show'
  get '/ideas/' => 'ideas#index'
  
  #UPDATE
  get '/ideas/:id/edit' => 'ideas#edit'
  get 'update_idea/:id' => 'ideas#update'
  
  
  #DESTROY
  get '/ideas/:id/destroy' => 'ideas#destroy'
  
end
