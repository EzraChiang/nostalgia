#users new
get '/register' do
  @user = User.new
  erb :'users/new'
end

#Create new user
post '/users' do
  @user = User.create(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/profile'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

#Show user/:id
get '/profile' do
  erb :'/user/profile'
end
