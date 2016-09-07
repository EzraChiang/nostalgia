#New User
get '/register' do
  @user = User.new
  erb :'users/register'
end

#Create User
post '/users' do
  @user = User.create(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/profile/#{@user.id}"
  else
    status 422
    @errors = @user.errors.full_message
    erb :'users/new'
  end
end

#Show user/:id
get '/profile/:id' do
  @user = User.find(params[:id])
  erb :'users/profile'
end
