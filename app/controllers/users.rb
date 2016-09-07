#New User
get '/register' do
  @user = User.new
  erb :'users/register'
end

#Create User
post '/users' do
  user_params = params[:user]
  @user = User.new(user_params)
  if user_params[:password] == ''
    @errors = ["You must enter a password."]
    erb :'/users/register'
  elsif @user.save
    session[:user_id] = @user.id
    redirect "/profile/#{@user.id}"
  else
    status 422
    @errors = @user.errors.full_message
    erb :'users/register'
  end
end

#Show user/:id
get '/profile/:id' do
  @user = User.find(params[:id])
  erb :'users/profile'
end
