get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/profile/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/profile/:id' do
  @user = User.find(params[:id])
  erb :"/users/profile"
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    redirect :"/profile/#{@user.id}"
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'user/login'
  end
end

get '/logout' do
  session.delete(:id)
  redirect '/'
end
