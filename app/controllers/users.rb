get '/signup' do

  erb :'users/new'
end

post '/signup' do
  puts params

  @new_user = User.new(params[:user])
  if @new_user && @new_user.save
    session[:user_id] = @new_user.id
    redirect '/users/profile'
  else
    @errors = @new_user.errors.full_messages
    erb :'users/new'
  end
end



get '/users/profile' do
  erb :'users/profile'
end


before '/users/only' do
  halt 401, "Not Authorized, must be logged in to access!" unless logged_in
end

get '/users/only' do

  erb :'users/private'
end
