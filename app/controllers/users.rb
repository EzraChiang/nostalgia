# homepage
get '/users' do
  erb :'/users/homepage'
end

# new account page
get '/users/new' do
  erb :'/users/new_account'
end

# Login page
get '/users/login' do
  erb :'/users/login'
end

# post-login
post '/users/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    redirect '/'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'/users/login'
  end
end

# post-create account
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect '/users/profile'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'/users/new_account'
  end
end


# User Profile Page
get '/users/profile' do
  redirect "/users/login" unless session[:id]
  @user = User.find_by(id: session[:id])
  erb :'/users/profile'
end

# Logout
delete '/users/logout' do
  session.delete(:id)
  redirect "/users/login"
end

