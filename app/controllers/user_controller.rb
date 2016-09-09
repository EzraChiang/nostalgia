get '/signup' do
  erb :'users/signup'
end

post '/signup' do
  @new_user = User.new(params[:user])
  if @new_user && @new_user.save
    session[:user_id] = @new_user.id
    redirect '/'
  else
    status 422
    @errors = @new_user.errors.full_messages
    erb :'users/signup'
  end
end
