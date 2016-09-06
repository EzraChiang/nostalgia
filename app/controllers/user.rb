# GET REQUESTS ======================================================

# new user sign up
get '/register' do
  @user = User.new
  erb :'users/new'
end

# show user profile
get '/profile' do
  erb :'/users/profile'
end


# POST REQUESTS =====================================================

# create new user
post '/users' do
  
  @user = User.create(params[:user])
  
  if @user.save
    session[:user_id] = @user.id
    redirect :'/profile'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

