get '/users/new' do
  erb :'/user/register'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/user/register'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :"/user/profile"
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])

  if @user && @user.authenticate(params[:user][:password])
    session[:id] = @user.id
    redirect :"/users/#{@user.id}"
  else
    @errors = ["User was either blank or not found..."]
    erb :'/user/login'
  end
end


get '/login' do
  erb :'/user/login'
end

get '/logout' do
  session.delete(:id)
  erb :'/user/login'
end
