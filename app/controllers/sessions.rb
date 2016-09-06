# new session
get '/login' do
  erb :'sessions/login'
end


# create session
post '/login' do

  user_params = params[:user]
  p user_params

  @user = User.authenticate(user_params[:email], user_params[:password])
  p @user

  if @user
    session[:user_id] = @user.id
    redirect :'/profile'
  else
    status 422
    @errors = ["Login failed"]
    erb :'sessions/login'
  end

end


# delete session
delete '/logout' do
  session.delete(:user_id)
  redirect :'/'
end
