class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  #GET
  get '/messages' do
    #query & return json response
    Message.all.to_json
  end

  #POST
  post '/messages' do
    #create
    message = Message.create(
      body: params[:body],
      username: params[:username]
    )
    #return json response
    message.to_json
  end

  #PATCH
  patch '/messages/:id' do
    #find
    message = Message.all.find(params[:id])
    #update
    message.update(
      body: params[:body],
      username: params[:username]
    )
    #return json response
    message.to_json
  end

  #DELETE
  delete '/messages/:id' do
    #find
    message = Message.all.find(params[:id])
    #delete
    message.destroy
    #return json response
    message.to_json
  end
  
end
