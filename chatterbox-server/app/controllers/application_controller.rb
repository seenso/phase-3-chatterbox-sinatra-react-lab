class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  #GET
  get '/messages' do
    #query
    #return json response
  end

  #POST
  post '/messages' do
    #create
    #return json response
  end

  #PATCH
  patch '/messages/:id' do
    #find
    #update
    #return json response
  end

  #DELETE
  delete '/messages/:id' do
    #find
    #delete
    #return json response
  end
  
end
