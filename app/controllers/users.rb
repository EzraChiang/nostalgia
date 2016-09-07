get '/users' do
  @users = User.all
  erb :'/users/show'
end
# -----------SIGNUP -----------
get '/users/new' do
  erb :'/signup'
end

post '/users' do
  user_params = params[:user]
  @user = User.new(user_params)
  # CHECK IF PASSWORD IS NOT BLANK BY VERIFYING IT IS NOT AN EMPTY STRING!!!!!
  if user_params[:password] == ''
    @errors = ["You must enter a password."]
    erb :'/signup'
    # USE user.save TO RETURN TRUE OR FALSE STATEMENT.. CANNOT HAVE just '@user' or '@user.valid?' because they equate to nil and it will break!!!
  elsif @user.save
    session[:user_id] = @user.id
    redirect "/users/profile"
  else
    status 422
    @errors = ["Invalid sign up information."]
    erb :'/signup'
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
