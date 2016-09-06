
# ------------LOGIN ---------------
get '/sessions/new' do
  erb :'/login'
end

post '/sessions' do
  user_params = params[:user]
  @user = User.find_by(email: user_params[:email])
  if @user && @user.authenticate(user_params[:password])
    session[:user_id] = @user.id
    redirect "/users/profile"
  else
    status 422
    @errors = ["Login failed"]
    erb :'/login'
  end
end

# ---------DELETE------------

get '/sessions' do
  session.destroy
  redirect :'/'
end
