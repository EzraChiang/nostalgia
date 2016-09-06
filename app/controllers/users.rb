get '/users' do
  @users = User.all
  erb :'/users/show'
end
# -----------SIGNUP -----------
get '/users/new' do
  erb :'/signup'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.valid?
    @user.save
    session[:user_id] = @user.id
    redirect "/users/profile"
  else
    status 422
    @errors = @users.errors.full_messages
    erb :'/login'
  end
end


# PROFILE------------------------------------
get '/users/profile' do
  @user = User.find(session[:user_id])
  if @user == nil
    status 422
    end
  erb :'/profile'
end
